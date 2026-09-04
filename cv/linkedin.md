# LinkedIn profile copy

Plain text, ready to paste. LinkedIn renders no markdown — no bold, no
headings — so these blocks use bullet characters and line breaks only.
Field limits: headline 220 characters, About 2,600, each role description 2,000.

Keep this in step with `tom-garrett-cv.html` and `app/views/pages/about.html.erb`.
A recruiter who reads the profile and then opens the site should not find two
different sets of numbers.

---

## Headline (220 max)

Lead / Principal Developer — Rails, Real-Time & Event-Driven Systems | Platform Architecture & Applied AI | B2B SaaS at 250k+ users

---

## About (2,600 max)

I'm a developer of ten years, now Director of Engineering. I design for the failure modes rather than the happy path, and I write the trade-offs down.

I own the architecture across three applications on a regulated multi-tenant Rails platform serving 250,000+ customers, and lead eight engineers plus design and operations.

What I've built recently:

• A browser-based, nine-language contact centre on Twilio Programmable Voice — from problem definition to production calls inside three months, then fifteen months of continuous delivery. It carries ~5,000 calls a month across 28 webhook and agent-action endpoints, and eliminated 100% of third-party vendor licensing costs.

• A bi-directional HubSpot CRM integration on top of it: call events log activity and contacts against the customer record, and tickets are raised from the call itself.

• A greenfield PMS Sync & Integration product — bi-directional API contracts with Yardi, Entrata, RealPage and Rent Manager, the integrations that unlock enterprise-tier accounts.

• The reliability work underneath all of it: idempotent webhook handlers, explicit compensation when a conference dial fails, and agent availability reconciled across PostgreSQL and Redis.

Where I'm strongest:

• Architecture and API design — contract design, bi-directional sync, webhook idempotency, data models built to survive change
• Real-time and event-driven systems — Twilio Programmable Voice, WebSockets over Redis pub/sub, row-level locking, retry and compensation design
• Applied AI, engineered rather than prompted — Anthropic SDK structured outputs, tool budgets, streaming, model tiering, human review gates
• Delivery leverage — CI/CD, feature flags tied to analytics, coverage rebuilds, SOC 2 Type I wired into CI

I lead by review and standard rather than by ticket: architecture reviews, written initiative scoping, and post-incident reviews that say what they left open. I sit with customers directly too — remote sessions with US clients, and continuous interviews going back to a mortgage application and appraisal platform.

My title is Director of Engineering; the work is the architecture, the hardest slice of the code, and the standards the team builds to.

Case studies, written up in full, including the parts that went wrong:
https://tomg926.github.io/Tom-Garrett-Technical-Product-Management/

---

## Experience

### DepositCloud — Director of Engineering
Jul 2026 – Present · Dublin, Ireland (US market)

Multi-tenant Rails SaaS for the full US rental security-deposit lifecycle.

• Own the architecture across three applications serving 250k+ customers (85k+ active accounts, 160k+ enrollments) on multi-tenant Rails, and lead 8 distributed engineers plus design and operations.

• Set the engineering standards the team builds to: architecture reviews, release rules, feature flags tied to analytics on every significant release, and written post-incident reviews.

• Drove SOC 2 Type I with automated scanning and penetration testing wired into CI.

• Run remote sessions directly with US clients, turning recurring technical problems into architecture decisions.

### DepositCloud — Lead Software Engineer
Aug 2025 – Jul 2026 · Dublin, Ireland (US market)

• Twilio contact centre, 0→1: production calls inside three months, then fifteen months of continuous delivery. Browser-based: nine-language IVR, language-aware round-robin routing, and a two-party conference per call so warm transfer, hold and supervisor barge are participant operations, not teardowns. Carries ~5,000 calls a month across 28 webhook and agent-action endpoints, and eliminated 100% of third-party vendor licensing costs.

• Bi-directional HubSpot CRM integration on top of it: call events log activity and contacts against the customer record, tickets are raised from the call itself, and both systems stay in sync.

• Hardened it against distributed, event-driven failure modes — carrier rejections, duplicate and out-of-order webhooks, agent availability split between PostgreSQL and Redis — with idempotent handlers and compensation that rolls agent state back on a failed conference dial.

• Built the greenfield PMS Sync & Integration product end to end: bi-directional API contracts with Yardi, Entrata, RealPage and Rent Manager, the integrations that unlock enterprise-tier accounts, plus Stripe and Salesforce.

• Cut release cycle from two weeks to under four hours (Docker, GitHub Actions). 900+ merged PRs and 47 schema migrations against a live product across the period.

### DepositCloud — Senior Software Engineer
Jun 2024 – Aug 2025 · Dublin, Ireland (US market)

• Set the engineering foundations the later roles run on: release standards across three applications, feature flags tied to analytics as the standard launch path, and CI/CD re-engineered from a two-week cycle to under four hours.

• Led the build of the Twilio Programmable Voice contact centre from first working call path through transfer logic, voicemail, recording and the supervisor console.

• Designed the data model and API contracts behind the call model — 13 core domain tables, 28 telephony and agent-action endpoints.

### Independent Developer & Adviser
2024 – Present · Dublin, Ireland

Contract build and technical advisory for early-stage Irish companies.

• Guest Nutrition (2024 – present) — technical adviser to an Enterprise Ireland High Potential Start-Up (HPSU). Ran discovery and feature-planning workshops; guided the product from 0 to 1 into active industry field trials.

• WealthGuard (2025 – present) — built a wealth-management platform solo in Ruby on Rails, now in active production use by 100+ high-net-worth clients. Two ingestion paths into a 22-table domain model: TrueLayer open banking for accounts and transactions, GPT-4o vision for pension and mortgage statements.

### DocuDynamics — Founder & Lead Engineer
Nov 2022 – Jun 2024 · Dublin, Ireland

Compliance-automation startup, built solo from customer discovery to production code.

• Designed and launched the entire v1 web application from concept to funded MVP in five months (React, Node, AWS), securing Microsoft for Startups and New Frontiers Phase 2 backing.

• Mapped the critical user workflows — document upload → AI pipeline → collaboration — and continuously optimised systemic friction points through 20+ user interviews and direct observation.

• Cultivated a culture of disciplined experimentation, using real-time production analytics to kill low-engagement features and scale high-value workflows.

### Penco — Developer & Digital Operations Manager
Dec 2019 – Nov 2022 · Dublin, Ireland

• Ran continuous user interviews with mortgage clients on a custom-built mortgage application and appraisal platform — streamlining the application journey, identifying the pain points that set the backlog, and testing new features with the people who used them.

• Managed end-to-end delivery of web and mobile features, aligning that research with sprint goals to ship production-ready work inside two-week iterations.

• Designed a custom Salesforce CRM integration strategy that eliminated 60% of manual data entry and increased operational capacity by 40%.

• Introduced Hotjar for user testing, cutting feature evaluation lifecycles by 70%.

• Featured in The Sunday Times (Business, Jul 2020) on leadership in helping Irish SMEs build data-driven operations.

### Gambling.com Group — Full Stack Developer
Jan 2019 – Dec 2019 · Dublin, Ireland

• Full-stack development and user testing for a US-market gambling comparison iOS app.

### GRID Finance — UX Engineer
Jan 2018 – Jan 2019 · Dublin, Ireland

• Journey mapping and application interfaces for an SME lending engine.

### Associated Newspapers — Multimedia Developer
Jun 2017 – Jun 2018 · Dublin, Ireland

### Cauldron Recording Studios — Audio Engineer
Jun 2016 – Sep 2016 · Dublin, Ireland

---

## Skills (order matters — LinkedIn pins the top three)

Software Architecture
Ruby on Rails
API Design
Event-Driven Architecture
Twilio
PostgreSQL
Redis
Technical Leadership
B2B SaaS
Third-Party Integrations
Webhooks
Product Discovery
User Research
Data Pipelines
Product Analytics
Feature Flags
Ruby on Rails
PostgreSQL
Redis
React
Node.js
CI/CD
Docker
Google Cloud Platform
AWS
CRM Integration
HubSpot
Salesforce
SOC 2
Roadmap Planning
Cross-Functional Leadership
Agile Methodologies
FinTech
PropTech

---

## Education

• Georgia Institute of Technology — Online Master of Science in Computer Science (OMSCS), part-time (in progress)
• UCD Professional Academy — Professional Academy Diploma, Advanced Artificial Intelligence for Business (Jul – Nov 2026, in progress)
• TU Dublin — New Frontiers, Phase 2, Enterprise Ireland (Oct 2022 – Mar 2023)
• Dublin City University — Higher Diploma, Computer Software Engineering, NFQ Level 8 (Sep 2020 – Jun 2021), first-class honours (1.1)
• Waterford Institute of Technology — Professional Diploma, Digital Marketing (2018 – 2019)
• IADT Dún Laoghaire — BA (Hons), Digital Art, NFQ Level 8 (2013 – 2017), second-class honours (2.1)

---

## Featured section

Add the portfolio as a Featured link:
https://tomg926.github.io/Tom-Garrett-Technical-Product-Management/

Suggested title: Four product case studies
Suggested description: A multilingual Twilio contact centre, an AI-assisted
high-net wealth dashboard, a self-updating AI legal knowledge base, and a
human-gated AI move-out pipeline — each with the decisions, the metrics and
the failures.
