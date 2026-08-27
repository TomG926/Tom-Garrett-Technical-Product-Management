# Static site export.
#
# Nothing on this site is dynamic: there is no database, no form, no session, and
# the case-study catalogue is a frozen array in CaseStudy. So every route can be
# rendered once at build time and served as flat HTML — which is what lets it host
# on GitHub Pages for nothing.
#
#   bin/rails static:build                     # output at root, for a custom domain
#   BASE_PATH=/my-repo bin/rails static:build  # output under a project-pages subpath
#
namespace :static do
  desc "Render every route to _site/ as flat HTML"
  task build: :environment do
    require "fileutils"

    out  = Rails.root.join("_site")
    base = ENV.fetch("BASE_PATH", "").chomp("/")

    FileUtils.rm_rf(out)
    FileUtils.mkdir_p(out)

    # Every page the site has. Add a case study to CaseStudy::ALL and it appears
    # here automatically.
    pages = { "/" => "index.html", "/about" => "about/index.html", "/work" => "work/index.html" }
    CaseStudy.all.each { |cs| pages["/work/#{cs.slug}"] = "work/#{cs.slug}/index.html" }

    session = ActionDispatch::Integration::Session.new(Rails.application)
    session.host! "tomgarrett.example"

    pages.each do |path, target|
      session.get(path)
      raise "#{path} returned #{session.response.status}" unless session.response.status == 200

      html = session.response.body
      html = rebase(html, base) unless base.empty?

      file = out.join(target)
      FileUtils.mkdir_p(file.dirname)
      File.write(file, html)
      puts format("  %-28s -> %-34s %6.1f kB", path, target, html.bytesize / 1024.0)
    end

    # Compiled assets and everything served straight from public/ (screenshots, the
    # CV, icons, the error pages). Skip the health-check-only bits.
    %w[assets case-studies].each do |dir|
      src = Rails.root.join("public", dir)
      FileUtils.cp_r(src, out) if src.exist?
    end
    Dir[Rails.root.join("public", "*.{pdf,svg,png,ico,txt,html}")].each { |f| FileUtils.cp(f, out) }

    # Tell GitHub Pages not to run Jekyll over the output — it would strip
    # directories whose names begin with an underscore.
    FileUtils.touch(out.join(".nojekyll"))

    puts "\n  #{pages.size} pages + assets -> #{out}"
    puts "  base path: #{base.empty? ? '(root)' : base}"
  end

  # Root-absolute URLs are correct when the site is served from a domain root, but a
  # GitHub project page lives under /<repo>/. Rails helpers can be told that via
  # relative_url_root; the hand-authored case-study markup cannot, because those
  # <img src="/case-studies/..."> paths are literal. Rewriting the rendered output
  # covers both in one pass.
  def rebase(html, base)
    html.gsub(%r{\b(href|src)="/(?!/)([^"]*)"}) { "#{$1}=\"#{base}/#{$2}\"" }
        .gsub(%r{\burl\(/(?!/)([^)]*)\)}) { "url(#{base}/#{$1})" }
  end
end
