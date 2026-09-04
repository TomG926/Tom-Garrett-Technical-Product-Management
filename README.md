# Tom Garrett — Lead / Principal Developer

Portfolio site and four long-form engineering case studies. Rails 8 renders it; it
deploys as flat HTML to GitHub Pages.

**Live:** https://tomg926.github.io/Tom-Garrett-Technical-Product-Management/

## What's here

| Page | Route |
| --- | --- |
| Home | `/` |
| About and experience | `/about` |
| Work index | `/work` |
| Resident Radius Contact Centre | `/work/resident-radius` |
| WealthGuard Dashboards | `/work/wealthguard` |
| DepositLex | `/work/depositlex` |
| Move-Out Copilot | `/work/move-out-copilot` |

Each case study is a self-contained document with its own typography and palette,
which is why `app/views/layouts/document.html.erb` is deliberately un-Tailwinded —
the site chrome takes on the colour of whichever study you're reading.

## Running it locally

```bash
bundle install
bin/dev            # Rails plus the Tailwind watcher
```

Then http://localhost:3000. There is no database to set up: the case-study
catalogue is a frozen array in `app/models/case_study.rb`, and no page reads or
writes persistent state.

## How it deploys

Nothing on the site is dynamic — no database, no forms, no sessions — so every
route is rendered once at build time and served as static files.

```bash
bin/rails static:build                          # → _site/, paths at the domain root
BASE_PATH=/my-repo bin/rails static:build       # → _site/, paths under a subpath
```

`.github/workflows/pages.yml` does this on every push to `main` and publishes
`_site/` to Pages. It works out `BASE_PATH` from the repository name: a
`<owner>.github.io` repo is served from the domain root and gets no prefix,
anything else is served from `/<repo>/` and gets one.

The prefix matters because the case-study markup contains literal
`/case-studies/img/...` paths that Rails' URL helpers never see. `static:build`
rewrites the rendered HTML rather than relying on `relative_url_root` alone.

## Adding a case study

1. Append an entry to `CaseStudy::ALL`.
2. Add `app/views/documents/_<slug>_head.html.erb` (fonts and tokens) and
   `_<slug>_body.html.erb` (the document).
3. Drop a cover at `public/case-studies/img/covers/<slug>.webp` and figures under
   `public/case-studies/img/<slug>/`.

The route, the work card, the index and the static export all pick it up from the
catalogue entry.

## The CV

`/tom-garrett-cv.pdf` is generated from `cv/tom-garrett-cv.html`, a standalone
print document that borrows the site's typography so the download matches the
pages linking to it. `cv/README.md` covers regenerating it and what to check.

## Not in this repository

`/private` holds superseded PDF exports of the case studies. They predate an
editorial pass that removed client and employer specifics from the HTML, so they
are gitignored and must not be republished. Regenerate from the HTML if a
downloadable version is ever wanted again.
