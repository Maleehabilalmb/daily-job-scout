# Daily Job Scout — Progress Log (spine)

**Candidate:** Maleeha Bilal — CV at `assets/FDE-CV/Maleeha-Bilal-CV-Forward-Deployed-Engineer-A4.pdf` (A4 default; US-Letter and Software-Engineer variants in the same folder)
**Target role:** Forward Deployed Engineer / Solutions Engineer / client-facing delivery engineer — plus junior full-stack (TypeScript/React/Next.js) as the fallback lane.
**Search lanes:** (A) Pakistan + remote via the Indeed PK connector · (B) international FDE track — Palantir, Databricks, Google Cloud (PSO/Customer Engineering), Salesforce, and comparable delivery-engineering employers.
**Visa:** requires sponsorship. Postings silent on sponsorship are **still shortlisted**, flagged `sponsorship: unverified`.
**Purpose:** every job ever surfaced is logged here so it is never shown twice. Read this file at the START of every beat; append at the END of every beat.

---

## Candidate fact sheet (ground truth — do not soften, do not undersell)

A shortlist rationale must be traceable to a line below.

**Shipped, verifiable engineering**
- **MB Dev Studio** (Founder & Developer, May 2026 – present) — client engagements end to end: requirements → scoping → build → deploy → post-launch support. Six-section consultancy site on Next.js App Router + TypeScript + Tailwind, deployed on Vercel. Live: `mbdevstudioomega.vercel.app`.
- **OpenClaw Prep** — Android app in React Native / Expo (EAS) / TypeScript / Firebase (Auth, Firestore), offline-first sync, in-app purchases, runtime circuit breaker. Release build in closed testing on Google Play Console.
- **Self-hosted automation platform** — n8n on Oracle Cloud ARM64 via Docker, Tailscale Funnel for HTTPS without a public IP, plus a seven-phase runbook another engineer reproduced unaided.
- **Browser automation & QA harness** — Playwright regression suite across mobile/tablet/desktop breakpoints, exposed to agents over MCP.
- **Agent Factory Prep** — deployed MCQ learning app, 39 topics, scoring + progress dashboard.
- **Cybersecurity intern, Progree** (Jun–Jul 2026) — nmap/Wireshark recon, STRIDE threat models, NIST SP 800-61 incident-response plan.

**Stack:** TypeScript, JavaScript, Python · React, Next.js (App Router), React Native, Expo, Tailwind · Node.js, REST, Firebase, JSON Schema · Playwright · Docker, Vercel, Oracle Cloud ARM64, Linux, Tailscale, CI/CD, Git & GitHub · MCP, agent orchestration, n8n · spec-driven development, runbooks, requirements elicitation.

**Non-engineering strengths that count for FDE:** 15 years in education and finance — teaching Economics (3 yrs, Lahore School System), banking accounts/audit/payroll, financial statement preparation. Stakeholder-facing communication, written documentation, English at IELTS 7.0. Domain literacy in finance is a genuine differentiator for fintech/banking client work.

**Education:** MSc Economics & Finance, Distinction, CGPA 3.92/4.00 (IIUI) · B.Ed (AIOU) · Agentic AI & Robotics Engineering, Panaversity/PIAIC Batch 83 — in progress, expected May 2027. **No CS/SE degree.**

**Honest gaps:**
- No paid employment as a software engineer — self-directed delivery only. Postings demanding "3+ years professional software development" remain out of reach.
- No production system at scale, no on-call, no team-of-engineers experience.
- Python is real but lighter than TypeScript. No Java, Go, C++, Rust. No Kubernetes, Terraform, Spark, or data-warehouse work.
- No CS degree — a hard filter at some large employers regardless of portfolio.

**Pending evidence (update this line when it lands):** a flagship web app built specifically to demonstrate FDE capability. Not shipped yet. Once live, log the URL and repo here and re-open every posting marked `reopen-when-flagship-ships`.

---

## Standing decisions

1. **Judge against the fact sheet above, not against a stale one.** The 2026-08-01 beat ran on an out-of-date profile that recorded zero programming experience. That profile is void. Everything logged that day is eligible for re-evaluation.
2. **Match on demonstrated delivery, not on years.** "2+ years" on a posting whose actual requirements are React/TypeScript/deployment is a shortlist with the gap flagged. "3+ years professional software development" plus a stack she has never touched is a drop.
3. **Pull the full JD before judging.** Titles lie in both directions — "Intern" can require a year of AWS; "Engineer, Deployment Strategy" can be entry-friendly.
4. **A keyword hit is not a match.** State which fact-sheet line the posting maps to. If the rationale needs a hedge ("may be considered", "or equivalent"), it is not a match.
5. **Sponsorship is a flag, not a filter.** Log `sponsorship: yes / no / unverified`. Never claim it is available unless the posting says so.
6. **CS-degree-required is a drop** unless the posting says "or equivalent practical experience" *and* the stack matches.
7. **Never invent experience.** No rationale may imply a job she has not held.
8. **Scarcity is not fit.** If nothing qualifies, return an empty list and say so plainly.
9. **Cap output at 3–5 jobs per beat.** Best fits only.
10. **Dedup on title + company, never on job ID alone.** `JOBSEARCH_*` numbers are assigned per
    search session, not per posting — the same Taraz role was `JOBSEARCH_1` on 08-01 and
    `JOBSEARCH_14` on 08-03. Treating the ID as stable makes dedup fail silently and re-shows
    everything. Log the ID anyway (it is the handle for `get_job_details` within a run), but match
    against the log on title + company. Lane B postings fetched from a career page keep their URL as
    the stable key. Found by beat 2, which proposed it as PR #1; landed by hand, since the routine
    may propose rule changes but never merges them.

---

## Verdict vocabulary

`shortlisted` · `skipped` · `dropped by checker` · `already applied` · `reopen-when-flagship-ships`

---

## Job log

| Date seen | Job ID | Title | Company | Location | Verdict | Reason |
|---|---|---|---|---|---|---|
| 2026-08-01 | JOBSEARCH_1 | Junior AI Engineer | Taraz Technologies Pvt. Ltd. | Rawalpindi | Re-evaluate | Cut under the void profile for "no coding evidence". Requires CS/SE/AI/DS degree + Python/TensorFlow/Docker — degree gate still fails (rule 6), but re-pull the JD to confirm before a final drop. |
| 2026-08-01 | JOBSEARCH_2 | Vibe Coder | Veevo Tech | Islamabad | Re-evaluate | 1–3 yrs full-stack Node/React/MongoDB. React/Node are now on the fact sheet — re-pull the JD. |
| 2026-08-01 | JOBSEARCH_3 | AI & Backend Engineer – Production AI & LLM Systems | Volga Partners | Islamabad | Skipped | Senior production backend/LLM. Still out of range. |
| 2026-08-01 | JOBSEARCH_4 | Principal Software & AI Engineer | Volga Partners | Islamabad | Skipped | Principal level. |
| 2026-08-01 | JOBSEARCH_5 | AI & Data Solutions Engineer | GrowthRatio Solutions | Rawalpindi | Re-evaluate | "Solutions engineer" shape is on-target for the FDE lane — re-pull the JD. |
| 2026-08-01 | JOBSEARCH_6 | Backend AI & Data Pipeline Engineer | Seeka Technology | Islamabad (remote) | Skipped | JD requires 1+ yr backend, AWS Lambda/Fargate, vector DBs. No AWS or vector-DB work on record. |
| 2026-08-01 | JOBSEARCH_7 | Associate Software Engineer – AI/LLM Applications | GRID Systems (PVT) Ltd. | Islamabad | Re-evaluate | 1–3 yrs software dev + strong Python. Borderline under rule 2 — re-pull the JD. |
| 2026-08-01 | JOBSEARCH_8 | Senior Agentic AI Engineer | Polarity Holdings | Wah Cantonment | Skipped | Senior level. |
| 2026-08-01 | JOBSEARCH_9 | Agentic AI Developer | ADEQUATE SOLUTIONS | Islamabad (hybrid) | Re-evaluate | EdTech domain fit + agent tooling now genuine (MCP, n8n). 2–8 yrs asked — re-pull the JD. |
| 2026-08-01 | JOBSEARCH_10 | AI Inference Engineer QVAC | Tether Operations Limited | Remote worldwide | Skipped | Specialist inference engineering. |
| 2026-08-01 | JOBSEARCH_11 | Asset Management Analyst (6–12 month engagement) | Case In Point Consulting | Islamabad | Skipped | Not an engineering role. |
| 2026-08-01 | JOBSEARCH_12 | Senior Backend Developer | AutoScale Ventures | Islamabad | Skipped | Senior backend. |
| 2026-08-01 | JOBSEARCH_13 | Customer Care Intern | Fortray Global Services LTD | Islamabad | Skipped | Not an engineering role. |
| 2026-08-03 | JOBSEARCH_14 | Junior AI Engineer | Taraz Technologies Pvt. Ltd. | Rawalpindi | Skipped | **Closes the 08-01 `Re-evaluate` on Taraz.** JD pulled: degree in CS/SE/AI/DS required with no equivalence clause → rule 6. Stack is TensorFlow/PyTorch, Kubernetes, AWS/Azure/GCP — none on the fact sheet. Drop stands under the corrected profile too. |
| 2026-08-03 | JOBSEARCH_15 | AI & Data Solutions Engineer | GrowthRatio Solutions | Rawalpindi | Skipped | **Closes the 08-01 `Re-evaluate`.** JD pulled: 5+ yrs, CS degree, production RAG, vector DBs, BigQuery. "Solutions engineer" in the title was the only FDE signal — rule 4. |
| 2026-08-03 | JOBSEARCH_16 | Vibe Coder | Veevo Tech | Islamabad | Dropped by checker | **Closes the 08-01 `Re-evaluate`.** Drafted on TS/React/Node/Git + AI-assisted development. Checker dropped it: JD demands *strong proficiency* in Express.js and MongoDB, neither on the fact sheet, and swapping in Firebase/Firestore is the adjacency rule 4 forbids — on top of 1–3 yrs professional she does not have (rule 2 drop condition met exactly). |
| 2026-08-03 | JOBSEARCH_17 | Junior Developer (Junior Full Stack) | ContentStudio.io | Rawalpindi (on-site) | Dropped by checker | Drafted on React + Python + the "or equivalent experience" degree clause. Checker dropped it: rule 6 needs the clause **and** a matching stack — the back half is Python/FastAPI/**Go** (explicit gap), MongoDB, ClickHouse. Also noted Python is a stack-line keyword with zero shipped Python artifact, and the posting is ~9 months old (30 Oct 2025). |
| 2026-08-03 | JOBSEARCH_18 | AI & Backend Engineer – Production AI & LLM Systems | Volga Partners | Islamabad | Skipped | Re-surfaced from 08-01 under a new ID. Senior production backend/LLM. |
| 2026-08-03 | JOBSEARCH_19 | IT Support Analyst – Level 2 – Engineer | FGK Back Office Services Pvt Ltd | Islamabad | Skipped | Helpdesk support, not delivery engineering. |
| 2026-08-03 | JOBSEARCH_20 | Solutions Engineer (RCM Specialist) | Monily | Islamabad | Skipped | JD pulled — title is misleading. Healthcare revenue-cycle **pre-sales**: join SDR calls, handle billing/coding/denial questions, maintain CRM notes. No code, no engineering. |
| 2026-08-03 | JOBSEARCH_21 | NOC Engineer | Zeta Technologies | Islamabad | Skipped | Network operations. |
| 2026-08-03 | JOBSEARCH_22 | Research Engineer Intern (Multimodal LLM) | Tether Operations Limited | Islamabad | Skipped | ML research. |
| 2026-08-03 | JOBSEARCH_23 | NOC Engineer | Zeta Technologies | Islamabad | Skipped | Duplicate of JOBSEARCH_21. |
| 2026-08-03 | JOBSEARCH_24 | Trainee Engineer-R&D (Mechanical) | Quality Vertex Integrated System Engineering | Karachi | Skipped | Mechanical engineering. |
| 2026-08-03 | JOBSEARCH_25 | Associate Software Engineer – AI/LLM Applications | GRID Systems / Global Rescue | Islamabad | Skipped | **Closes the 08-01 `Re-evaluate`.** JD pulled: Bachelor's/Master's in CS/AI/DS required, no equivalence clause → rule 6. Plus RAG, vector DBs (Qdrant/Pinecone/FAISS), FastAPI, AWS, .NET/Java/Spring exposure. |
| 2026-08-03 | JOBSEARCH_26 | Data Analyst | VALUEMOMENTUM Inc | Hyderabad | Skipped | Not an engineering role; wrong geography. |
| 2026-08-03 | JOBSEARCH_27 | Internship – Software Engineering | Arkhitech / Howmuch, Foodnerd | Lahore | Skipped | JD pulled. Right *shape* — an internship suits someone with no paid engineering employment — but "Minimum Bachelor's or Master's degree in Computer Science" carries no equivalence clause (rule 6), and the gate is data structures/algorithms/time complexity. Checker called this the harshest correct drop. |
| 2026-08-03 | JOBSEARCH_28 | Implementation Engineer | Adal Fintech (AdalFi) | Karachi | Dropped by checker | Best **role-shape** match of the run — end-to-end delivery for banks + her finance domain. Sent to the checker as an explicit borderline; drop upheld and over-determined: CS/SE degree "from a reputed university" with no equivalence clause (rule 6); 2–4 yrs implementation; advanced SQL not on her stack; "mentor junior team members" collides with the stated no-team gap. Checker: banking *employment* is not implementing software *for* banks — blurring the two would breach rule 7. |
| 2026-08-03 | JOBSEARCH_29 | Project Engineer | Synergy Solutions | Karachi | Skipped | Not software delivery. |
| 2026-08-03 | JOBSEARCH_30 | Associate Software Engineer | CureMD | Lahore | Skipped | JD pulled: "BS degree in Computer Science or Software Engineering", no equivalence clause → rule 6. Stack is ASP.NET / SQL Server / TFS. Fresh–1 yr otherwise would have fit. |
| 2026-08-03 | JOBSEARCH_31 | Software Engineer – AI/LLM Applications | GRID Systems (PVT) Ltd. | Islamabad | Skipped | Senior sibling of JOBSEARCH_25; same degree gate. |
| 2026-08-03 | JOBSEARCH_32 | AI Automation Consultant | INSPIRE BUILDERS GENERAL CONTRACTING | Lahore | Skipped | Construction-sector automation consulting, not an engineering post. |
| 2026-08-03 | JOBSEARCH_33 | Solutions Engineer – Data Engineering | Astronomer | Hyderabad (hybrid) | Skipped | JD pulled: 3–5 yrs data engineering, Apache Airflow DAGs/custom operators in production, ETL/ELT, Snowflake/Databricks. Explicit data-warehouse gap. Hyderabad-office hybrid, 3 days on-site. |
| 2026-08-03 | JOBSEARCH_34 | Technical Delivery Consultant (Data & Analytics) | Datamatics Global Services Ltd | Islamabad | Skipped | JD pulled: 4–7 yrs, Snowflake/BigQuery/Redshift/Databricks, Kimball/Inmon modelling, Airflow/dbt. Consultative shape is right; every technical requirement is a stated gap. |
| 2026-08-03 | JOBSEARCH_35 | Release Train Engineer (RTE) | S&P Global | Islamabad | Skipped | SAFe programme management, senior. |
| 2026-08-03 | JOBSEARCH_36 | Cloud Operations Manager (AWS) | Cloudelligent | Islamabad | Skipped | Manager level; AWS not on the fact sheet. |
| 2026-08-03 | JOBSEARCH_37 | Experienced Outdoor Sales Engineer (Interior Products) | The Protector's | Islamabad | Skipped | Field sales, not engineering. |
| 2026-08-03 | JOBSEARCH_38 | Frontend Web Developer (Next.js & React & TypeScript) | AL GHANI Medical | Lahore (on-site) | **Shortlisted** | JD pulled. Required list is React, Next.js, TypeScript, Tailwind, responsive design, SEO, Git, REST APIs — every item is a shipped noun in one fact-sheet line: *"six-section consultancy site on Next.js App Router + TypeScript + Tailwind, deployed on Vercel — reusable component library, responsive layouts and programmatic SEO."* Vercel is a listed nice-to-have. No degree gate, no minimum years. Sponsorship: n/a (domestic). Frictions flagged, not hidden — screening asks for **3 live sites** (fact sheet supports 2 web + 1 Android app) and for personally improved **PageSpeed/Core Web Vitals** (programmatic SEO is on the fact sheet, CWV work is not); on-site Lahore vs. her Islamabad base is a relocation call. |
| 2026-08-03 | JOBSEARCH_39 | Frontend Developer | Hrhive | Lahore | Skipped | Thin listing, no stack stated; superseded by JOBSEARCH_38 in the same lane. |
| 2026-08-03 | JOBSEARCH_40 | ReactJs Developer | Hashed Sysytem | Lahore | Skipped | Same lane, weaker match than JOBSEARCH_38. |
| 2026-08-03 | JOBSEARCH_41 | Full Stack Developer (Nest js) | Inventive Research Group | Lahore | Skipped | NestJS not on the fact sheet. |
| 2026-08-03 | JOBSEARCH_42 | Python Developer – Urgent Hiring | xcorebit | Lahore | Skipped | Python-primary; fact sheet states Python is lighter than TypeScript. |
| 2026-08-03 | JOBSEARCH_43 | Associate Software Engineer | Softpers Interactive | Lahore | Skipped | Stale (07 Jan 2026), no stack stated. |
| 2026-08-03 | JOBSEARCH_44 | Senior Software Engineer – Mobile & Web Solutions | Marlayz Brüder | Lahore | Skipped | Senior; Flutter-primary. |
| 2026-08-03 | JOBSEARCH_45 | Full Stack Developer with AI Integration | HRHive | Lahore | Skipped | JD pulled: 3–5 yrs + CS degree + vector DBs/LangChain/AWS. Rule 2 drop condition. |
| 2026-08-03 | JOBSEARCH_46 | Software Engineer Level II | Softpers Interactive | Lahore | Skipped | Level II, stale (09 Feb 2026). |
| 2026-08-03 | JOBSEARCH_47 | AI/ML Full Stack Developer | EcoEnergy Systems | Lahore | Skipped | ML-primary, no ML on the fact sheet. |
| 2026-08-03 | JOBSEARCH_48 | Forward-Deployed AI Data Engineer | Edisyl | Boston, MA | Skipped | Lane B. Data-engineering FDE, on-site Boston. |
| 2026-08-03 | JOBSEARCH_49 | Forward Deployed Engineer III | ShipBob | Chicago, IL | Skipped | Lane B. Level III. |
| 2026-08-03 | JOBSEARCH_50 | Forward Deployed Engineer | Tensormesh Inc. | Remote (US-based) | Skipped | Lane B, and the most expensive correct drop of the run — the **only** posting seen that explicitly lists *"Visa sponsorship"* as a benefit (`sponsorship: yes`), which she requires. Dropped anyway: JD requires hands-on Kubernetes (Helm, CRDs, storage, networking) and LLM inference serving (vLLM/SGLang/Triton) + GPU tuning — Kubernetes is a named gap. Also "US-based". Checker: keeping it because sponsorship is scarce would be rule 8 exactly. |
| 2026-08-03 | JOBSEARCH_51 | Forward Deployed AI Engineer – Lead | Altimetrik Corp | Remote | Skipped | Lane B. Lead level. |
| 2026-08-03 | JOBSEARCH_52 | Principal Engineer – Secure AI | Target | Brooklyn Park, MN | Skipped | Principal level. |
| 2026-08-03 | JOBSEARCH_53 | Digital Assets – Blockchain Software Developer | Franklin Templeton | Stamford, CT | Skipped | Blockchain; not on the fact sheet. |
| 2026-08-03 | JOBSEARCH_54 | Cloud Engineer I/II (W2PE) | Trace3 | Remote | Skipped | Cloud infra contracting, US work authorisation implied. |
| 2026-08-03 | JOBSEARCH_55 | AI Solutions Architect | QAD, Inc. | Chicago, IL | Skipped | Architect level. |
| 2026-08-03 | JOBSEARCH_56 | Junior Technical Success Manager | Qdrant | San Francisco, CA | Skipped | Lane B. JD pulled — "Junior" in the title, but requires **3+ yrs in a customer-facing technical delivery role** plus ML lifecycle, data pipelines and search/retrieval systems. Textbook case for standing decision 3. |
| 2026-08-03 | JOBSEARCH_57 | AI Agent Architect | Edisyl | Boston, MA | Skipped | Architect level, on-site Boston. |
| 2026-08-04 | JOBSEARCH_58 | Technical Delivery Consultant (Data & Analytics) | Datamatics Global Services Ltd | Islamabad | Skipped | Re-surfaced under a new ID (was JOBSEARCH_34). Dedup on title + company. |
| 2026-08-04 | JOBSEARCH_59 | AI Automation Consultant | INSPIRE BUILDERS GENERAL CONTRACTING | Lahore | Skipped | Re-surfaced (was JOBSEARCH_32). |
| 2026-08-04 | JOBSEARCH_60 | Business Consultant (AI & EdTech) | aQovia | Lahore | Skipped | JD pulled. 4–5 yrs as Business/Management Consultant; deliverables are target operating models and change-management reports to steering committees. Non-engineering. The EdTech domain and stakeholder-facing shape are real, but nothing technical is asked — rule 4. |
| 2026-08-04 | JOBSEARCH_61 | Principal Data Consultant – Analytics & AI | 10Pearls | Karachi | Skipped | Principal level. |
| 2026-08-04 | JOBSEARCH_62 | IT Support Engineer | Soothmedia Technologies (Pvt.) Ltd. | Lahore | Skipped | Helpdesk support, not delivery engineering. |
| 2026-08-04 | JOBSEARCH_63 | D365 Techno-Functional | ITC Worldwide | Karachi | Skipped | Dynamics 365 functional consulting; not on the fact sheet. |
| 2026-08-04 | JOBSEARCH_64 | Project Engineer | Synergy Solutions | Karachi | Skipped | Re-surfaced (was JOBSEARCH_29). |
| 2026-08-04 | JOBSEARCH_65 | Associate Director of ERP Digital Transformation | Careem | Karachi | Skipped | Director level. |
| 2026-08-04 | JOBSEARCH_66 | Senior Engineer | ThoughtFocus | Hyderabad | Skipped | Senior; wrong geography. |
| 2026-08-04 | JOBSEARCH_67 | Project Engineering Specialist | United Nations Development Programme | Quetta | Skipped | Civil/infrastructure programme work, not software. |
| 2026-08-04 | JOBSEARCH_68 | Forward-Deployed AI Data Engineer | Edisyl | Boston, MA | Skipped | Re-surfaced (was JOBSEARCH_48). |
| 2026-08-04 | JOBSEARCH_69 | Forward Deployed Engineer | Tensormesh Inc. | Remote (US-based) | Skipped | Re-surfaced (was JOBSEARCH_50). Kubernetes + LLM inference serving; drop stands. |
| 2026-08-04 | JOBSEARCH_70 | Forward Deployed Engineers (FDE) | Fredrin | Remote | Skipped | Lane B, and the **most expensive correct drop of this run** ($150–250k). JD pulled: the whole stack is strict TypeScript — Next.js/React front, Node CLIs, Electron shell — plus daily AI-coding-agent work, which is her exact declared lane. Dropped anyway on three independent named gaps: "substantial experience shipping production software" (no production system at scale), container orchestration with **Kubernetes** (named gap), and relational schema design across Postgres/MySQL/Oracle with Prisma (nothing beyond Firestore on the CV). Also gated on "you already run Fredrin". Checker: keeping it for the pay and the lane would be rule 8. |
| 2026-08-04 | JOBSEARCH_71 | Forward Deployed Engineer (AI Capability Center) | Huron Consulting Group | Chicago, IL (#LI-Remote) | Skipped | Lane B. JD pulled: "3 to 5 years building software or AI" + "Python, and AWS or Azure"; position level **Senior Associate**. The degree line does say "or equivalent experience" — but that clears only the first half of rule 6, and the stack does not match (AWS/Azure is a named gap, Python-primary). Rule 2 drop condition met on both halves. |
| 2026-08-04 | JOBSEARCH_72 | Forward Deployed AI Engineer – Lead | Altimetrik Corp | Remote | Skipped | Re-surfaced (was JOBSEARCH_51). Lead level. |
| 2026-08-04 | JOBSEARCH_73 | Junior Technical Success Manager | Qdrant | San Francisco, CA | Skipped | Re-surfaced (was JOBSEARCH_56). |
| 2026-08-04 | JOBSEARCH_74 | Principal Engineer – Secure AI | Target | Brooklyn Park, MN | Skipped | Re-surfaced (was JOBSEARCH_52). |
| 2026-08-04 | JOBSEARCH_75 | Sales Engineer, Storage & Analysis (West region) | Cribl | San Francisco, CA | Skipped | Lane B. JD pulled: 5+ yrs in logs/metrics/observability in a customer-facing role, consultative selling, 30% travel, must reside in the US Western Region. |
| 2026-08-04 | JOBSEARCH_76 | Digital Assets – Blockchain Software Developer | Franklin Templeton | Stamford, CT | Skipped | Re-surfaced (was JOBSEARCH_53). |
| 2026-08-04 | JOBSEARCH_77 | AI Agent Architect | Edisyl | Boston, MA | Skipped | Re-surfaced (was JOBSEARCH_57). |
| 2026-08-04 | JOBSEARCH_78 | Cloud Operations Manager (AWS) | Cloudelligent | Islamabad | Skipped | Re-surfaced (was JOBSEARCH_36). |
| 2026-08-04 | JOBSEARCH_79 | Full Stack Software Engineer Mid Senior Level | Workstaff360 | Islamabad | Skipped | Mid–senior level, stated in the title. |
| 2026-08-04 | JOBSEARCH_80 | Junior Developer | ContentStudio.io | Islamabad | Skipped | Re-surfaced (was JOBSEARCH_17, dropped by checker). Posting now ~9 months stale. |
| 2026-08-04 | JOBSEARCH_81 | Vibe Coder | Veevo Tech | Islamabad | Skipped | Re-surfaced (was JOBSEARCH_16, dropped by checker). |
| 2026-08-04 | JOBSEARCH_82 | React Js Developer | MTBC CareCloud | Islamabad | Skipped | JD pulled: **4–5 years** of React.js development, Redux/Zustand state management, FHIR/HL7 healthcare workflows. Next.js and TypeScript appear only as "nice to have". Rule 2. |
| 2026-08-04 | JOBSEARCH_83 | 90 days Internship in Software & Business Development | ARFA TECH | Rawalpindi (on-site) | Skipped | **Harshest correct drop of this run.** JD pulled — React Native, Expo-adjacent, Firebase, TypeScript, Next.js, React: line-for-line the OpenClaw Prep stack, the heaviest overlap anywhere in the run, and the dual technical + client-communication track is FDE-shaped. Dies on eligibility: "Bachelor's degree in Computer Science, Software Engineering, Information Technology, **or a related field**" — that is a degree-*field* clause, not the practical-experience equivalence rule 6 requires; an MSc Economics & Finance is not a related field. Also unpaid, 18:00–24:00 night shift, on-site only. |
| 2026-08-04 | JOBSEARCH_84 | React Native Developer (Remote) | PanaceaLogics | Rawalpindi | Skipped | Part-time, posted 23 Nov 2024 — ~20 months stale. |
| 2026-08-04 | JOBSEARCH_85 | Mern Stack Intern | Mehdi Technologies | Islamabad (on-site) | Dropped by checker | Drafted because the *required* bar is only "basic understanding of JavaScript, React.js and Node.js" + HTML/CSS/REST, with Express/MongoDB appearing as things to learn rather than demanded proficiency. Checker dropped it: the posting states **"Candidates with prior professional experience will not be entertained"** and "only for fresh graduates" — unqualified, and the draft rationale silently read in the word *software*. Calling a 15-year career changer with an MSc and a B.Ed a "fresh learner" to clear that gate is rule 7. Checker also holed the core defence: **Node.js is a skills-line keyword with no shipped standalone Node backend on the CV** — the ContentStudio finding, re-run against Node. |
| 2026-08-04 | JOBSEARCH_86 | Mobile Application Developer - React Native | Let's Outsource (SMC PVT LTD) | Rawalpindi (on-site) | Skipped | JD pulled: 3–5 yrs professional React Native, multiple apps shipped to both stores, plus Google Maps API, geofencing and background location tracking. Rule 2. |
| 2026-08-04 | JOBSEARCH_87 | Backend Developer/Node.js Developer | Mob Inspire (PVT) Ltd | Rawalpindi | Skipped | Posted 23 Nov 2024 — ~20 months stale. |
| 2026-08-04 | JOBSEARCH_88 | Front-End Web Developer (React + Azure) | NorthBay Solutions | Islamabad (hybrid) | Skipped | JD pulled: **8+ years**, Azure AD/B2C, .NET Core backend collaboration. |
| 2026-08-04 | JOBSEARCH_89 | MERN Stack Developer | Veevo Tech | Islamabad (on-site) | Skipped | JD pulled: 2–3 yrs hands-on Node.js building production web applications, MongoDB-primary, microservices/Docker/Kubernetes "a plus". Same gaps that sank the Veevo Vibe Coder posting. |
| 2026-08-04 | JOBSEARCH_90 | Junior Full-Stack Developer | Appetiser | Lahore | Dropped by checker | Sent to the checker as an explicit borderline — the only "Junior" full-stack title of the run with no degree gate. Drop upheld and over-determined: "at least 1 year of post-graduate working experience" (MB Dev Studio is ~3 months, and counting teaching/banking toward it is the AdalFi breach); **Vue.js is named** in the frontend list, so offering React is the Firebase-for-MongoDB adjacency; "LEAD projects and take charge of a team" hits the no-team gap (the Fortray clause); and TypeScript — her strongest asset — is demoted to "a bonus" while the graded requirements are Vue, PHP/Laravel, SQL schema design, SOLID and unit testing. The one genuine hook, "BONUS: Experience in Agentic AI", is a bonus line and cannot carry a shortlist (rule 4). Also AUD 420–600/month, "preferably less than 30 years old", posted 6 Mar 2026. |
| 2026-08-04 | JOBSEARCH_91 | Web Developer Intern | Fortray Global Services LTD | Lahore (on-site) | Skipped | JD pulled. "FRESH GRADUATES ARE ENCOURAGED TO APPLY" and a 6-month internship leading to a permanent job — right shape. Double-determined drop: "BSc/MSc in Computer Science or relevant fields" with no practical-equivalence clause (rule 6), and "Lead and train the team of Junior Web Developer Team" collides with the no-team gap. Title inside the JD is actually *Senior* Web Developer Intern. |
| 2026-08-04 | JOBSEARCH_92 | Junior Dotnet Developer | MEP Solutions | Lahore | Skipped | .NET not on the fact sheet. |
| 2026-08-04 | JOBSEARCH_93 | Junior Software Developer (VB6 / .NET & SQL Server) | Star Laboratories (Pvt.) Ltd. | Lahore | Skipped | VB6/.NET/SQL Server; none on the fact sheet. |
| 2026-08-04 | JOBSEARCH_94 | Junior iOS Developer | QBXNet Ltd | Lahore | Skipped | Native iOS/Swift; not on the fact sheet (her mobile work is React Native). |
| 2026-08-04 | JOBSEARCH_95 | Software Developer | AutoScale Ventures | Remote (Pakistan) | Skipped | JD pulled: minimum **3+ yrs professional full-stack**, plus Python (Flask/FastAPI/Django) or Node backend, SQL/Postgres, Linux system design and large-scale crawling infrastructure. Rule 2. Remote-PK and PKR 400k/month made it worth the pull. |
| 2026-08-04 | JOBSEARCH_96 | WordPress Web Developer Intern | Digital Dost Pvt Limited | Lahore | Skipped | WordPress; not on the fact sheet. |
| 2026-08-04 | JOBSEARCH_97 | Senior Software Engineer – Mobile & Web Solutions | Marlayz Brüder | Lahore | Skipped | Re-surfaced (was JOBSEARCH_44). |
| 2026-08-04 | JOBSEARCH_98 | Backend Developer | TheKalculators | Lahore (on-site) | Skipped | JD pulled: **6+ years**, and the body says Senior Backend Developer. AWS EC2/S3, Redis, Socket.io, mentoring juniors. Node.js/TypeScript and Firebase are genuine overlaps; everything else is not. |
| 2026-08-04 | JOBSEARCH_99 | Junior Oracle Apex Developer | Tracking World | Lahore | Skipped | Oracle APEX; not on the fact sheet. |
| 2026-08-04 | JOBSEARCH_100 | Frontend Developer (React.js / Next.js) | Crescentic Digital Pvt. Ltd. | Karachi (on-site) | **Shortlisted** | JD pulled — the entire posting is five required bullets and four responsibilities, and every required item is a shipped noun on the fact sheet: *React.js & Next.js* → "six-section consultancy site on **Next.js App Router** with TypeScript, Tailwind and Vercel"; *JavaScript (ES6+), HTML, CSS, Tailwind* → "Agent Factory Prep — HTML · JavaScript · Tailwind CSS · Vercel", deployed; *Git* → skills line "Git & GitHub"; *responsive web development* → "responsive layouts" plus the Playwright suite across mobile/tablet/desktop breakpoints. **No degree gate, no database, no backend framework, nothing to substitute** — rule 2's drop condition needs 3+ yrs *and* an untouched stack, and there is no untouched stack here. Sponsorship: n/a (domestic). Frictions disclosed, not papered over: asks **1–3 years** against ~3 months of self-directed founder work and zero paid engineering employment; "experience with REST APIs" is the thinnest of the five bullets (shipped evidence is Firebase SDK integration, not REST endpoint authorship); **Karachi on-site is a relocation**, not a commute, from her Islamabad base. Rs60,000–80,000/month. |
| 2026-08-04 | JOBSEARCH_101 | React/Next.JS Front-End Developer | Frontline Data Solutions | Karachi (listing) / US-remote (JD) | Skipped | JD pulled: **4–7 yrs** professional React/Next.js, and the JD says "work from anywhere within the United States" — the Karachi location on the listing is wrong. |
| 2026-08-04 | JOBSEARCH_102 | Frontend Developer | Simpaisa Payment Gateway | Karachi (on-site) | Skipped | JD pulled, and the closest near-miss in Lane A — React/Next.js/TypeScript/Tailwind/SEO is near-identical to the shortlisted Crescentic role. Dies on the three things Crescentic lacks: **3–4 yrs** frontend experience, an explicit **Data Structures & Algorithms** gate (the Arkhitech precedent), and MongoDB/Mongoose (the Veevo precedent). Also demands personally optimised Core Web Vitals. |
| 2026-08-04 | JOBSEARCH_103 | FULL STACK Developer (FastAPI + React/Next.js) | Robust Support and Solutions | Karachi | Skipped | FastAPI/Python-primary backend; fact sheet states Python is lighter than TypeScript. |
| 2026-08-04 | JOBSEARCH_104 | MERN Stack Developer (Expertise in Next.js) | Paksa IT soloutions (Pvt.) Limited | Malir Cantt | Skipped | MERN-primary; Express/MongoDB are stated gaps. |
| 2026-08-04 | JOBSEARCH_105 | URGENT HIRING – AI-Powered Full Stack Developer (WordPress, React/Next.js, Laravel & Node.js) | 97 Solutions | Karachi Nazimabad | Skipped | WordPress and Laravel are stated gaps. |
| 2026-08-04 | JOBSEARCH_106 | Software Developer (Full Stack) | Paksa IT soloutions (Pvt.) Limited | Malir Cantt | Skipped | Sibling of JOBSEARCH_104, same lane and stack. |
| 2026-08-04 | JOBSEARCH_107 | MERN - Full Stack Web Developer Trainer / Teacher | RICC | Karachi | Skipped | Part-time instructor post. Her teaching background is real, but this is not a delivery-engineering role and the subject is MERN. |
| 2026-08-04 | JOBSEARCH_108 | Full-stack developer (AI-assisted development) | TechBiz Global GmbH | Karachi | Skipped | JD pulled, and tempting on the surface — Next.js App Router/Server Components, Claude Code sub-agent orchestration and **MCP integrations** are all on the fact sheet. Dropped on the substrate: NestJS + Prisma deep proficiency, AWS (ECS/Lambda/RDS/SQS) *and* GCP (GKE/Cloud Run/BigQuery), Redis/ElastiCache as core infrastructure, pnpm monorepo, multi-tenant isolation, and "proven experience building applications serving millions of users with high concurrency" marked Critical — the production-at-scale gap, stated. |
| 2026-08-04 | JOBSEARCH_109 | CMS Developer | Legendesk | Karachi | Skipped | CMS platform work; not on the fact sheet. |
| 2026-08-04 | JOBSEARCH_110 | Software Integration Engineer | Frontier Strategies LLC | Remote (US) | Skipped | Lane B. JD pulled: **minimum 10 years** IT plus 10 years Health IT, Java/JEE, Entellitrak, MS SQL Server, DoD RMF/DISA STIGs, US work authorisation. |
| 2026-08-04 | JOBSEARCH_111 | Software Engineer - Cloud/GovCloud (Top Secret clearance) | ICF | Washington, DC | Skipped | Requires an active US Top Secret clearance — categorically unavailable. |
| 2026-08-04 | JOBSEARCH_112 | ServiceNow Hardware Asset Management Developer | CACI International | Remote (US) | Skipped | ServiceNow platform development; not on the fact sheet. |
| 2026-08-04 | JOBSEARCH_113 | Forward-Deployed AI Data Engineer | Edisyl | Boston, MA | Skipped | Third ID for the same posting this run (JOBSEARCH_48 / _68 / _113) — dedup on title + company caught it. |
| 2026-08-04 | JOBSEARCH_114 | Software Engineer – Client Communication & Technical Intake | Calidad software | Remote (US) | Skipped | Lane B. JD pulled — the purest FDE-*shape* posting of the run: join client calls, lead technical discovery, scope projects, write up notes, which is the MB Dev Studio "requirements → scoping" line exactly. Dropped on two hard gates: "5+ years preferred" software engineering background, and "Based in the **United States** and must be a **US citizen**" — sponsorship cannot bridge a citizenship requirement. |
| 2026-08-04 | JOBSEARCH_115 | Solutions Engineer | AfterShip | Seattle, WA | Skipped | Lane B. JD pulled: **4+ yrs** in Sales Engineering / Solutions Architecture / Technical Consulting in B2B SaaS, mid-market and enterprise deal support, Shopify/Amazon/TikTok Shop integration troubleshooting. Mandarin "strongly preferred" (hers is elementary). Rule 2. |
| 2026-08-04 | JOBSEARCH_116 | Senior Frontend-Focused Full Stack Engineer (React / Java) | Lifted, an Upwork Company™ | Texas City, TX | Skipped | Senior; Java is a named gap. |
| 2026-08-04 | JOBSEARCH_117 | Senior Front End Software Developer (AI, React, JavaScript) | Revvity | Waltham, MA (US-remote) | Skipped | Senior level. |
| 2026-08-04 | JOBSEARCH_118 | Digital Assets - Blockchain Software Developer | Franklin Templeton | Stamford, CT | Skipped | Second ID for the same posting this run (JOBSEARCH_76 / _118). |
| 2026-08-04 | JOBSEARCH_119 | Full Stack Developer (Remote) | LiftFront | Remote | Skipped | Lane B, part-time, and the **closest call of the six drops the checker re-examined**. Frontend is React/Next.js/TypeScript and the automation half is "Make.com, **n8n**, or Zapier" — n8n is on the fact sheet and almost never appears on a posting — plus client-facing scoping and feasibility work that matches MB Dev Studio's requirements→scoping→build→deploy line. Dies on rule 2's drop condition met on both halves: "minimum of 3 years of professional software development experience" **and** a .NET / C# / ASP.NET Core backend, an explicit stated gap. **Search-side flag: a React/Next/TS + n8n posting without the .NET half would be a strong keep — hunt for one.** |

---

## Beat history

### 2026-08-01 — Beat 1 (setup run, profile now void)
- Searches: "AI engineer" (Islamabad), "AI trainer data annotation" (remote, 0), "junior data analyst" (Islamabad), "AI intern trainee" (Islamabad), "prompt engineer" (remote, 0).
- 13 postings seen, 5 JDs pulled. Draft shortlist JOBSEARCH_1 and JOBSEARCH_9; checker dropped both. **Delivered: 0 jobs.**
- **Invalidated 2026-08-03.** The fact sheet used that day recorded no programming experience and no shipped projects, which was wrong. Six entries reopened above.

### 2026-08-03 — Spine rebuilt (no search run)
- Fact sheet replaced with the Forward Deployed Engineer CV (`assets/FDE-CV/`): shipped Next.js, React Native, Playwright, Docker/Oracle Cloud and MCP work.
- Added the international FDE lane (Palantir, Databricks, Google Cloud, Salesforce) alongside Indeed PK.
- Sponsorship policy set to flag-not-filter. Standing decisions rewritten around demonstrated delivery.
- Repo moved to GitHub as the shared spine so the cloud routine and this laptop stay in sync — see `specs/spec.md`.

### 2026-08-03 — Beat 2 (first real cloud beat)

**Searches run — Lane A (Indeed connector), 8 queries:**
`Forward Deployed Engineer` (remote PK → 0) · `solutions engineer` (Islamabad → 10) · `implementation engineer delivery` (Pakistan → 10) · `junior full stack developer React TypeScript Next.js` (Islamabad → 0) · `React developer` (remote PK → 0) · `customer engineer technical consultant` (Islamabad → 4) · `frontend developer Next.js` (Lahore → 10) · `software engineer fresh graduate TypeScript` (Rawalpindi → 0) · `technical support engineer customer success` (remote PK → 0).

**Searches run — Lane B:** Palantir careers, Lever/Palantir and the Databricks RSA posting all returned **HTTP 403** to WebFetch — `task.md` item 3 called this correctly, the big-name career pages are bot-blocked from the cloud. WebSearch surfaced only staffing-partner FDE roles (Accenture/Deloitte Palantir practice, 3+ yrs + Foundry) and senior Databricks RSA reqs. Lane B was **recovered** by pointing the Indeed connector at `forward deployed engineer solutions engineer` / remote / **US** (10 results, JOBSEARCH_48–57) and `implementation consultant onboarding engineer SaaS` / remote / **GB** (0). See the note below.

**Counts:** 44 postings seen (JOBSEARCH_14–57), **14 full JDs pulled**, 0 judged on title alone.

**Draft shortlist (4, incl. 1 explicit borderline):** JOBSEARCH_38 AL GHANI Medical · JOBSEARCH_16 Veevo Tech · JOBSEARCH_17 ContentStudio.io · JOBSEARCH_28 AdalFi (sent as a flagged borderline for adjudication).

**Checker (separate `general-purpose` subagent) — kept 1, dropped 3:**
- **JOBSEARCH_16 Veevo "Vibe Coder" — DROPPED.** Required *strong proficiency* in Express.js and MongoDB, neither on the fact sheet; substituting Firebase/Firestore for MongoDB is the adjacency rule 4 forbids, on top of 1–3 yrs professional. Rule 2's drop condition met exactly. Checker's tell: "your own draft rationale already concedes both gaps."
- **JOBSEARCH_17 ContentStudio.io — DROPPED.** "Or equivalent experience" clears the first half of rule 6 but not the second — the stack must match too, and the back half is Python/FastAPI/**Go** (named gap), MongoDB, ClickHouse. Also: Python is a stack-line keyword with **zero shipped Python artifact** — every shipped project on the fact sheet is TypeScript/JS/React Native/HTML. Independently, the posting is ~9 months stale.
- **JOBSEARCH_28 AdalFi — DROP UPHELD.** Over-determined: rule 6 with no equivalence clause; 2–4 yrs implementation; advanced SQL absent from her stack; mentoring collides with the no-team gap. Checker's line worth keeping: *"being a bank employee is not the same as implementing software for banks"* — narrative fit is the most seductive way to breach rule 7.
- **JOBSEARCH_38 AL GHANI Medical — KEPT.** "Every item in the verbatim REQUIRED list is a shipped noun in a single fact-sheet line, not an inference from the title." Checker added two frictions to disclose rather than paper over: the screening asks for **3 live sites** (fact sheet supports 2 web + 1 Android app) and for personally improved **PageSpeed/Core Web Vitals** (programmatic SEO is on the fact sheet; CWV work is not).
- **All 11 pre-checker drops re-examined; none overturned.** Checker singled out JOBSEARCH_50 (Tensormesh — the only sponsorship-yes posting of the run) as the most expensive correct drop, and JOBSEARCH_27 (Arkhitech internship) as the harshest.

**Delivered: 1 job** — JOBSEARCH_38. Short, and honest under rule 8; the list was not padded to reach the 3–5 cap.

**Mechanism finding — Indeed job IDs are NOT stable across runs.** `JOBSEARCH_*` numbers are assigned per search session, not per posting: Taraz's "Junior AI Engineer" was `JOBSEARCH_1` on 08-01 and came back as `JOBSEARCH_14` today; Veevo, GrowthRatio, GRID and Volga likewise. **Dedup on job ID alone silently fails** — the whole spine rests on it. This beat deduped on title + company instead, which is what let the four 08-01 `Re-evaluate` entries be closed rather than re-shown as new. A standing-decision change is proposed by PR, not pushed here.

**Backlog item 7 progress:** 4 of the 6 reopened `Re-evaluate` postings closed with full JDs pulled (Taraz, GrowthRatio, Veevo, GRID — all now definitively dropped, and the corrected fact sheet did not rescue any of them). The remaining two (`JOBSEARCH_9` ADEQUATE SOLUTIONS, and Volga's `JOBSEARCH_3`) did not re-surface in today's searches.

### 2026-08-04 — Beat 3

**Searches run — Lane A (Indeed connector), 9 queries:**
`Forward Deployed Engineer solutions engineer` (Islamabad → 0) · `implementation engineer delivery consultant` (Pakistan → 10) · `junior full stack developer React TypeScript Next.js` (Islamabad → 0) · `frontend developer React Next.js TypeScript` (remote PK → 0) · `customer engineer technical consultant onboarding` (Islamabad → 1) · `software engineer fresh graduate React Node` (Rawalpindi → 1) · `React developer` (Islamabad → 10) · `junior web developer` (Lahore → 10) · `Next.js developer` (Karachi → 10) · `technical support engineer product support SaaS` (remote PK → 0).

**Searches run — Lane B (through the connector, per standing practice), 4 queries:**
`forward deployed engineer solutions engineer` (remote **US** → 10) · `implementation engineer customer onboarding TypeScript` (remote **US** → 10) · `deployment strategist solutions architect associate` (remote US → 0) · `implementation consultant onboarding engineer SaaS` (remote **GB** → 0) · `solutions engineer forward deployed` (remote GB → 0). WebSearch run to spot new employers: surfaced FurtherAI (YC) and Anthropic as FDE employers hiring new grads, plus the general observation that sponsorship is case-by-case — no fetchable posting, and neither appeared in the connector's remote-US results. Career pages were not re-attempted; the 403 finding from beat 2 stands.

**Counts:** 62 postings seen (JOBSEARCH_58–119), **22 full JDs pulled**, 0 judged on title alone. 13 of the 62 were re-surfaced postings caught by title + company dedup — including Edisyl's "Forward-Deployed AI Data Engineer", which arrived under **three** different IDs in a single run (`_48` / `_68` / `_113`). Standing decision 10 is now over-proven.

**Draft shortlist (3, incl. 1 explicit borderline):** JOBSEARCH_100 Crescentic Digital · JOBSEARCH_85 Mehdi Technologies MERN intern · JOBSEARCH_90 Appetiser (sent as a flagged borderline).

**Checker (separate `general-purpose` subagent) — kept 1, dropped 2, upheld all 6 re-examined drops:**
- **JOBSEARCH_100 Crescentic Digital — KEPT.** "Rule 2's drop condition needs 3+ yrs **and** an untouched stack. This posting is 1–3 yrs and there is no untouched stack in it — no database, no backend framework, no degree clause, nothing to substitute." Checker added three frictions to disclose: the years gap is the first thing a screener sees and the rationale must not imply MB Dev Studio was an employer relationship; "experience with REST APIs" is the weakest of the five bullets because the shipped evidence is Firebase SDK integration rather than REST endpoint authorship; and Karachi on-site is a relocation, not a commute.
- **JOBSEARCH_85 Mehdi Technologies — DROPPED.** The posting says "Candidates with prior professional experience will not be entertained" — unqualified — and "only for fresh graduates", twice. The draft rationale had silently read the word *software* into the first clause. Checker: "This is the AdalFi failure mode inverted: there, narrative fit inflated her; here it deflates her into a category she is not in."
- **JOBSEARCH_90 Appetiser — DROP UPHELD.** Over-determined four ways: 1 yr post-graduate working experience she does not have in software; **Vue.js named** in the frontend list, making a React substitution the same forbidden adjacency as Firebase-for-MongoDB; "take charge of a team" against the no-team gap; and TypeScript demoted to "a bonus" while the graded requirements are all gaps. The one genuine hook (Agentic AI) is a bonus line, and a bonus line cannot carry a shortlist.
- **All 6 re-examined pre-checker drops upheld, none overturned.** Most expensive: **JOBSEARCH_70 Fredrin** — $150–250k remote, and the only posting seen whose primary stack (strict TypeScript, Next.js/React, Node CLIs) plus daily AI-coding-agent work sits squarely in her declared lane; still dies on Kubernetes and production-at-scale. Harshest: **JOBSEARCH_83 ARFA TECH** — React Native + Expo + Firebase + TypeScript + Next.js is OpenClaw Prep line-for-line, the heaviest stack overlap in the entire run, and it dies on a credential she cannot retroactively acquire. Closest call: **JOBSEARCH_119 LiftFront**, the first posting ever seen carrying n8n.

**Delivered: 1 job** — JOBSEARCH_100. The list was not padded to the 3–5 cap; second beat running in which honest scarcity beat the quota.

**Fact-sheet findings raised by the checker (proposed by PR, not pushed here):** two lines in the current spine are wrong against the CV. (1) The 08-03 beat history asserts "**zero shipped Python artifact**" — but the CV lists the Browser Automation & QA Harness as `Python · Playwright · Model Context Protocol`, so a shipped Python artifact does exist and that precedent has been over-applied since. (2) The reverse error also exists: **Node.js appears only on the skills line with no shipped standalone Node backend** anywhere on the CV, which is the same keyword-without-artifact weakness the ContentStudio drop identified for Python. Both belong in "Honest gaps" / the stack line, and both change how future postings are judged.

**Lane observation for the next beat.** Lane A's junior-frontend seam (React/Next.js/TypeScript/Tailwind, no degree gate, no database) is the only one producing keeps — AL GHANI on beat 2, Crescentic on beat 3, with Simpaisa a near-miss. Lane B produced 0 keeps across two beats: every remote-US FDE posting seen so far gates on 3–10 years, Kubernetes/AWS, or US citizenship. Worth trying next: connector searches for `associate solutions engineer`, `technical consultant graduate` and `n8n automation engineer` in remote GB/EU, where the sponsorship route is likelier than the US.
