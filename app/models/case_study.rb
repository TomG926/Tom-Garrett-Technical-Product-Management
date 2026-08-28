# The case-study catalogue.
#
# Every study is a finished document authored as HTML and rendered inline — each
# keeps its own typography and palette, which is why the document layout is
# deliberately un-Tailwinded.
class CaseStudy
  ATTRS = %i[
    slug title kicker summary blurb role period team status accent
    stats tags cover cover_alt highlights
  ].freeze

  attr_reader(*ATTRS)

  def initialize(**attrs)
    ATTRS.each { |a| instance_variable_set("@#{a}", attrs[a]) }
  end

  def to_param = slug
  def cover_path = "/case-studies/img/covers/#{cover}"
  def document_partial = "documents/#{slug.tr('-', '_')}"

  ALL = [
    new(
      slug: "resident-radius",
      title: "Multilingual Contact Centre",
      kicker: "Voice infrastructure",
      summary: "A multilingual, browser-based call centre on Twilio Programmable Voice — then made to survive the parts of telephony nobody controls.",
      blurb: "Residents call one number, choose a language, and reach an agent who speaks it. " \
             "Agents take and place calls entirely in the browser. The interesting product work " \
             "was not the happy path — it was everything that happens when a distributed telephony " \
             "system disagrees with itself.",
      role: "Product & delivery lead",
      period: "Dec 2024 – Jun 2026",
      team: "7 contributors",
      status: "In production",
      accent: "#1D6FE0",
      stats: [
        ["~5,000", "Calls a month in production"],
        ["~2 min", "Average handled call"],
        ["9", "Languages in the IVR"],
        ["28", "Webhook & agent-action endpoints"]
      ],
      tags: %w[Twilio\ Programmable\ Voice Rails WebSockets Redis Google\ Cloud\ Run],
      highlights: [
        "Language-aware round-robin routing with a per-language pointer, row-locked so two callers can never be handed the same agent.",
        "Every conversation is a two-party conference rather than a direct dial, which is what makes warm transfer, hold and supervisor entry possible without dropping the caller.",
        "A supervisor console that surfaces online, available-in-database and available-in-Redis as three separate indicators — because during the project those three learned to disagree.",
        "An incident review that converted a class of silent failures into visible, recoverable ones, and wrote down the items it did not close."
      ],
      cover: "resident-radius.webp",
      cover_alt: "The agent home screen: outbound dialler, WebSocket health indicator, availability toggle, voicemail queue and personal call analytics."
    ),
    new(
      slug: "wealthguard",
      title: "AI-Assisted Household Wealth Dashboards",
      kicker: "Personal wealth platform",
      summary: "A household balance sheet for the Irish market — then a stretch spent proving every number on it was the right number.",
      blurb: "A member records what they own, owe, earn and spend; the product turns it into one " \
             "balance sheet, a retirement outlook, a protection-gap analysis and an honest trend line. " \
             "Built for an adviser-led business, so an administrator prepares the account before the " \
             "owner is ever invited in.",
      role: "Product & delivery lead",
      period: "Oct 2025 – Aug 2026",
      team: "Solo build",
      status: "Running",
      accent: "#0F5C4A",
      stats: [
        ["22", "Domain tables"],
        ["267", "Commits over 10 months"],
        ["24", "Screens, member and adviser"],
        ["91.6%", "Line coverage, 1,097 tests"]
      ],
      tags: ["Rails 8", "TrueLayer open banking", "GPT-4o vision", "Stripe", "Tailwind"],
      highlights: [
        "Goals share one cash pool and are satisfied in priority order, so the same euro can never fund three goals at once.",
        "A retirement engine built for Irish rules — per-pension projection, State Pension from 66, and headroom against the Standard Fund Threshold.",
        "Trends record what was observed and break the line where nothing was, rather than inventing a confident history.",
        "A test-suite rebuild that took coverage from 31.9% to 91.6% and surfaced defects nobody had reported — including a bank integration that had never once produced a record."
      ],
      cover: "wealthguard.webp",
      cover_alt: "The financial overview: account tiles, an assets-versus-liabilities donut and an income-versus-expenses donut."
    ),
    new(
      slug: "depositlex",
      title: "Self-Updating AI Legal Knowledge Base",
      kicker: "AI legal intelligence",
      summary: "A knowledge base of US deposit law that keeps itself current — and never writes to itself.",
      blurb: "Three Claude agents research the live web, adversarially fact-check each other, then " \
             "emit schema-valid proposals. A reviewer accepts, edits or declines. Nothing reaches the " \
             "library without a person, which is the whole product rather than a safety feature bolted on.",
      role: "Product & engineering lead",
      period: "Jun – Aug 2026",
      team: "Solo build",
      status: "Running",
      accent: "#7E2233",
      stats: [
        ["3", "Agents per run"],
        ["51", "US jurisdictions covered"],
        ["106", "Seeded reference articles"],
        ["128K", "Max output tokens, streamed"]
      ],
      tags: ["Rails 8.1", "Anthropic SDK", "Structured outputs", "Solid Queue", "Hotwire"],
      highlights: [
        "Research, validate and structure run as three separate requests so each gets a fresh server-tool budget — and so the validator can be told to be hostile to the researcher.",
        "The final stage is tool-free and schema-bound: fourteen required fields, enums tied to the application's own vocabularies.",
        "A run keeps its verified brief even when it produces nothing, because the reasoning is output too.",
        "A failure worth the space: a search scoped outside the output enum produced accurate UK law labelled New York."
      ],
      cover: "depositlex.webp",
      cover_alt: "The reviewer dashboard: article and jurisdiction counters, the AI search console, and an inbox of proposals awaiting review."
    ),
    new(
      slug: "move-out-copilot",
      title: "Human-Gated AI Move-Out Pipeline",
      kicker: "Workflow automation prototype",
      summary: "A four-stage pipeline that works a move-out end to end, then stops — because the next step moves someone's deposit.",
      blurb: "Built to answer a question a design document cannot: would a reviewer actually trust " \
             "this, and what does the screen need to show before they would? Faithful to the real " \
             "workflow down to the status codes, and deliberately inert.",
      role: "Product & engineering lead",
      period: "Jul 2026",
      team: "Solo build",
      status: "Sandboxed prototype",
      accent: "#9A5B00",
      stats: [
        ["4", "Agents in the pipeline"],
        ["2", "Model tiers, by cost of error"],
        ["7", "Sample statements, every branch"],
        ["~$0.10", "Estimated cost per statement"]
      ],
      tags: ["Rails 7.1", "Anthropic SDK", "PDF extraction", "Human-in-the-loop"],
      highlights: [
        "Model tiers chosen by what kind of mistake each stage can make — the expensive model reads the money, the cheap one picks between three labels.",
        "Matching leads with deterministic rules and calls a model only to break genuine ties.",
        "The status engine is a port, not a re-derivation, so the proposed outcome is the outcome a reviewer is judging.",
        "Pointed at a real property-management export, it revealed the data model assumed gross figures where the document supplies an already-netted ledger."
      ],
      cover: "move-out-copilot.webp",
      cover_alt: "The review screen: the statement PDF beside the extracted fields, matched account, classification, reconciliation and proposed outcome."
    )
  ].freeze

  def self.all = ALL
  def self.find(slug) = ALL.find { |c| c.slug == slug }
  def self.find!(slug) = find(slug) || raise(ActiveRecord::RecordNotFound)
end
