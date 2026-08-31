# LinkedIn profile copy

Plain text, ready to paste. LinkedIn renders no markdown — no bold, no
headings — so these blocks use bullet characters and line breaks only.
Field limits: headline 220 characters, About 2,600, each role description 2,000.

Keep this in step with `tom-garrett-cv.html` and `app/views/pages/about.html.erb`.
A recruiter who reads the profile and then opens the site should not find two
different sets of numbers.

---

## Headline (220 max)

Technical Product Manager — Platform, APIs & Integrations | B2B SaaS at 250k+ users | Twilio, CRM & event-driven systems

---

## About (2,600 max)

I'm a technical product leader with ten years across software architecture, UX and platform ownership. I came up through engineering and still write production code, which is why I spec against real system constraints rather than around them.

I own the roadmap for a multi-tenant B2B SaaS platform serving 250,000+ customers across three applications, working with a distributed team of eight engineers plus design and operations — influence rather than reporting lines.

What I've built recently:

• A browser-based, nine-language contact centre on Twilio Programmable Voice — from problem definition to production calls inside three months, then fifteen months of continuous delivery. It carries ~5,000 calls a month across 28 webhook and agent-action endpoints, cut average handling time, and eliminated 100% of third-party vendor licensing costs.

• A bi-directional HubSpot CRM integration on top of it: call events log activity and contacts against the customer record, and tickets are raised from the call itself.

• A greenfield PMS Sync & Integration product — bi-directional API contracts with Yardi, Entrata, RealPage and Rent Manager, the integrations that unlock enterprise-tier accounts.

• The reliability work underneath all of it: idempotent webhook handlers, explicit compensation when a conference dial fails, and agent availability reconciled across PostgreSQL and Redis.

Where I'm strongest:

• APIs, platforms and integrations — contract design, bi-directional sync, webhook idempotency, developer experience
• Event-driven and communications systems — Twilio Programmable Voice, CRM sync, WebSockets, queue-driven pipelines
• Data-heavy products — ingestion pipelines (open banking, document AI), analytics instrumentation, feature flags
• 0→1 on ambiguous technical problems, plus the discovery to know which problem is worth solving

I run discovery directly with customers: remote sessions with US clients today, and continuous interviews going back to a mortgage application and appraisal platform where what the interviews surfaced set the backlog.

My title is Technical Product & Engineering Director. I describe myself as a technical product manager because that's the work — the roadmap, the API contracts and the trade-offs, close enough to the code to be accountable for them.

Case studies, written up in full, including the parts that went wrong:
https://tomg926.github.io/Tom-Garrett-Technical-Product-Management/

---

## Experience

### DepositCloud — Technical Product & Engineering Director
Aug 2025 – Present · Dublin, Ireland (US market)

Multi-tenant Rails SaaS for the full US rental security-deposit lifecycle.

• Own the product roadmap across three applications serving 250k+ customers (85k+ active accounts, 160k+ enrollments), aligning 8 distributed engineers plus design and operations on priorities and release cycles — influence rather than reporting lines.

• Twilio contact centre, 0→1: production calls inside three months, then fifteen months of continuous delivery. Browser-based: nine-language IVR, language-aware round-robin routing, and a two-party conference per call so warm transfer, hold and supervisor barge are participant operations, not teardowns. Carries ~5,000 calls a month across 28 webhook and agent-action endpoints; cut average handling time and eliminated 100% of third-party vendor licensing costs.

• Bi-directional HubSpot CRM integration on top of it: call events log activity and contacts against the customer record, tickets are raised from the call itself, and both systems stay in sync.

• Hardened it against distributed, event-driven failure modes — carrier rejections, duplicate and out-of-order webhooks, agent availability split between PostgreSQL and Redis — with idempotent handlers and compensation that rolls agent state back on a failed conference dial.

• Owned the greenfield PMS Sync & Integration product end to end: bi-directional API contracts with Yardi, Entrata, RealPage and Rent Manager, the integrations that unlock enterprise-tier accounts, plus Stripe and Salesforce.

• Run remote discovery sessions directly with US clients, turning their operational pain points into the contact-centre and sync roadmaps.

• Cut release cycle from two weeks to under four hours (Docker, GitHub Actions). 900+ merged PRs and 18–25 initiatives over 24 months, including 47 schema migrations against a live product.

• Embedded SOC 2 Type I compliance, penetration testing and vulnerability mitigation in the roadmap.

### DepositCloud — Lead Technical Product Engineer
Jun 2024 – Aug 2025 · Dublin, Ireland (US market)

• Set up the product and delivery foundations the director role now runs on: roadmap, prioritisation and release planning across three applications, with feature flags and analytics as the standard launch mechanism.

• Led the build of the Twilio Programmable Voice contact centre from first working call path through transfer logic, voicemail, recording and the supervisor console.

• Designed the data model and API contracts behind the call model — 13 core domain tables, 28 telephony and agent-action endpoints.

### Product Consultant & Adviser — Independent
2024 – Present · Dublin, Ireland

Advisory and hands-on product engineering for early-stage Irish companies.

• Guest Nutrition (2024 – present) — product adviser to an Enterprise Ireland High Potential Start-Up (HPSU). Run product discovery and technical feature-planning workshops that set the roadmap; guided the product from 0 to 1 into active industry field trials.

• WealthGuard (2025 – present) — scoped the product specification and built a wealth-management application in Ruby on Rails, now in active production use by 100+ high-net-worth clients. Two ingestion paths into a 22-table domain model: TrueLayer open banking for accounts and transactions, GPT-4o vision for pension and mortgage statements.

### DocuDynamics — Founder
Nov 2022 – Jun 2024 · Dublin, Ireland

Compliance-automation startup. End-to-end product development, from customer discovery to production code.

• Designed and launched the entire v1 web application from concept to funded MVP in five months (React, Node, AWS), securing Microsoft for Startups and New Frontiers Phase 2 backing.

• Mapped the critical user workflows — document upload → AI pipeline → collaboration — and continuously optimised systemic friction points through 20+ user interviews and direct observation.

• Cultivated a culture of disciplined experimentation, using real-time production analytics to kill low-engagement features and scale high-value workflows.

### Penco — Digital Operations Manager
Dec 2019 – Nov 2022 · Dublin, Ireland

• Ran continuous user interviews with mortgage clients on a custom-built mortgage application and appraisal platform — streamlining the application journey, identifying the pain points that set the backlog, and testing new features with the people who used them.

• Managed end-to-end delivery of web and mobile features, aligning that research with sprint goals to ship production-ready work inside two-week iterations.

• Designed a custom Salesforce CRM integration strategy that eliminated 60% of manual data entry and increased operational capacity by 40%.

• Introduced Hotjar for user testing, cutting feature evaluation lifecycles by 70%.

• Featured in The Sunday Times (Business, Jul 2020) on leadership in helping Irish SMEs build data-driven operations.

### Gambling.com Group — Full Stack Developer
Jan 2019 – Dec 2019 · Dublin, Ireland

• Full-stack development and user testing for a US-market gambling comparison iOS app.

### GRID Finance — User Experience Designer
Jan 2018 – Jan 2019 · Dublin, Ireland

• Journey mapping and application interfaces for an SME lending engine.

### Associated Newspapers — Multimedia Designer
Jun 2017 – Jun 2018 · Dublin, Ireland

### Cauldron Recording Studios — Multimedia Designer
Jun 2016 – Sep 2016 · Dublin, Ireland

---

## Skills (order matters — LinkedIn pins the top three)

Product Management
API Design
Systems Architecture
Twilio
Event-Driven Architecture
Technical Product Management
Platform Product Management
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

• UCD Professional Academy — Professional Academy Diploma, Advanced Artificial Intelligence for Business (Jul – Nov 2026, in progress)
• Dublin City University — Computer Software Engineering, NFQ Level 8 (Sep 2020 – Jun 2021), first-class honours (1.1)
• IADT Dún Laoghaire — BA (Hons), Digital Art, NFQ Level 8 (2013 – 2017), second-class honours (2.1)
• TU Dublin — New Frontiers, Phase 2, Enterprise Ireland (Oct 2022 – Mar 2023)
• Waterford Institute of Technology — Professional Diploma, Digital Marketing (2018 – 2019)

---

## Featured section

Add the portfolio as a Featured link:
https://tomg926.github.io/Tom-Garrett-Technical-Product-Management/

Suggested title: Four product case studies
Suggested description: A multilingual Twilio contact centre, an AI-assisted
high-net wealth dashboard, a self-updating AI legal knowledge base, and a
human-gated AI move-out pipeline — each with the decisions, the metrics and
the failures.
