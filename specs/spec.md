# Spec — Daily Job Scout (cloud routine + GitHub spine)

## Goal
Scout Forward Deployed Engineer and client-facing delivery roles every day without the laptop being
on. The routine writes the repo; `D:\CAARE\Q2\SIR-AMMAR\Indeed` catches up on `git pull` when the laptop wakes.

## Layout
| Path | Holds |
|---|---|
| `specs/spec.md` | this file — what the system is, the beat it runs, how it is built, and why |
| `job-scout-progress.md` | the spine: fact sheet, standing decisions, every job seen |
| `references/pull.bat` | the local sync script |
| `assets/FDE-CV/` | CV variants the routine reads at run time |
| `working/` | how this was built and proven — **the routine never reads these** |

**The routine reads exactly two files:** this spec and `job-scout-progress.md`. Everything in
`working/` is history, kept for the record and never loaded at run time — so a beat cannot be
confused by an instruction that no longer applies, and `working/` can be moved out of the repo
without affecting a run. Each fact lives in exactly one place; files point at each other rather than
repeat.

## Architecture
GitHub **private** repo `Maleehabilalmb/daily-job-scout` is the single source of truth.
- **Cloud routine** (claude.ai routines, 09:00 PKT daily) clones it, runs the beat, commits, pushes.
- **Laptop** is a clone. The routine never writes `D:\` — a Startup-folder script pulls at logon;
  mechanism, auth and failure mode are under **Local sync** below.
- **Routine prompt** is held in **The beat** below. Edit it here first, then update the claude.ai
  routine, so the two never drift.
- **Write mode:** log entries go straight to `main`. Any change to the fact sheet, standing decisions
  or this spec opens a PR instead — never self-merged. Both halves proven by beat 2 (push + PR #1).
- **Local CLI is wired:** `gh` authenticated as `Maleehabilalmb` (scopes `repo`, `read:org`, `gist`); this folder is a clone with `origin` set, so `git pull` / `gh` work as-is.

## Decisions (and why)
| Decision | Why |
|---|---|
| Cloud routine, not Windows Task Scheduler | beats must fire with the laptop off |
| Private repo | the log carries her CV, contact details and rejection history |
| Markdown log, no GitHub issues | one file is the whole spine; issues were extra machinery |
| Split write mode | the log is append-only and safe; judgment rules deserve review |
| Checker is a separate subagent | self-review in the same pass rationalises its own shortlist |
| Sponsorship flagged, not filtered | most postings are silent; filtering would empty the list |
| Databricks over Datadog/Deloitte in lane B | it has genuinely FDE-shaped delivery roles |
| CV read at run time from `assets/FDE-CV/` | rationales must cite real CV lines, not a remembered profile |
| Beat kept in this spec | the routine's instructions stay reviewable and versioned in one file |
| Dedup on title + company, not job ID | Indeed reassigns `JOBSEARCH_*` per search session; ID-only dedup fails silently (proven 2026-08-03) |
| Lane B runs through the connector's remote US/GB search | Palantir / Lever / Databricks career pages return 403 to WebFetch from the cloud |

## The beat
The exact prompt the cloud routine runs. **Edit here first, then update the claude.ai routine** so
the two never drift.

---

You are the Daily Job Scout. Everything you need is in this repo — you start with zero context.

**STEP 1 — Load context.** Read `specs/spec.md` and `job-scout-progress.md` in full before anything
else. `job-scout-progress.md` is the spine: the candidate fact sheet (ground truth on her skills),
the standing decisions (the rules you judge by), and the log of every job ever seen. Also read
`assets/FDE-CV/Maleeha-Bilal-CV-Forward-Deployed-Engineer-A4.pdf` — every rationale must cite what the CV
actually says, not a remembered profile.

**STEP 2 — Search two lanes.**
- **Lane A (Indeed connector):** Forward Deployed Engineer, solutions engineer, implementation and
  delivery engineer, and junior full-stack (TypeScript / React / Next.js) roles — Pakistan and remote.
- **Lane B (international FDE track):** forward-deployed and delivery-engineering roles at Palantir,
  Databricks, Google Cloud (PSO / Customer Engineering), Salesforce and comparable employers. Run
  this **through the Indeed connector's remote US / GB search** (`forward deployed engineer solutions
  engineer`, `implementation consultant onboarding engineer SaaS`). Their own career pages —
  `palantir.com/careers`, `jobs.lever.co/palantir`, `databricks.com/company/careers` — return **HTTP
  403** to WebFetch from the cloud; verified 2026-08-03. Still run WebSearch to spot new employers,
  but never treat a 403 as "nothing found".

Skip anything already in the log — match on **title + company**, not job ID. Indeed's `JOBSEARCH_*`
IDs are assigned per search session, so the same posting gets a new ID every run (standing decision
10). Log the ID anyway; it is the handle `get_job_details` needs within a run.

**STEP 3 — Judge.** For anything plausible, pull the **full job description** (`get_job_details`,
or fetch the posting) before judging. Never judge on a title. For each job you keep, name the
specific fact-sheet line it rests on. Keyword overlap is not a match. Flag sponsorship as
`yes` / `no` / `unverified` — never assert sponsorship a posting does not state.

**STEP 4 — Checker (a separate step, mandatory).** Spawn a subagent with the Agent tool and give it
your draft shortlist plus the fact sheet. Its job is adversarial: for each job, *"was this verified
against her stated skills, or assumed from the title?"* It drops anything that does not hold up.
Do not do this in your own head — a separate subagent is the entire point. Carry its drops and
reasons into your output.

**STEP 5 — Write and push.**
- Append **every job seen this run** to the job log table — date, job ID, title, company, location,
  verdict, reason — **including the ones you skipped**. That table is the dedup spine; a job missing
  from it will be re-shown tomorrow.
- Add a beat-history entry: searches run, counts, draft shortlist, what the checker dropped and why,
  what was delivered.
- Commit and push those log changes straight to `main` — the repo's default branch, and the one you
  cloned. Do not create any other long-lived branch.
- If you believe the candidate fact sheet, the standing decisions, or `specs/spec.md` should change, do
  **not** push that to `main` — open a PR with your reasoning in the description, and never merge
  it yourself.

**STEP 6 — Report.** 3–5 jobs maximum, best fits only. One sentence on why each fits, one sentence
on what the checker verified or rejected. If nothing survives, say so plainly and deliver an empty
list — do not pad it. Scarcity is not fit.

---

## Local sync — how the laptop file gets updated
Not part of the routine prompt. The cloud routine has no route to `D:\`; it only ever writes the
GitHub repo, and the push is where its job ends. Something on the laptop has to fetch — there is no
push-to-laptop mechanism.

That something is `references/pull.bat`, which runs
`git -C D:\CAARE\Q2\SIR-AMMAR\Indeed pull --ff-only`. It is launched at logon by `job-scout-pull.vbs`
in the Windows Startup folder (`%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup`), which runs
it hidden — no console flash. A Task Scheduler on-logon task was tried first and refused: registering
one requires admin rights. The Startup folder needs none, and the whole thing is disabled by deleting
that one `.vbs`.

- **Windows logon is the trigger.** You sign into Windows, it fires. GitHub has nothing to do with
  the trigger.
- **GitHub auth is already stored.** `credential.helper` is `manager` (Git Credential Manager),
  holding the token `gh` set up. `git pull` reads it silently — no browser, no login, no prompt.
  Verified with `GIT_TERMINAL_PROMPT=0`, which fails hard if any interactive prompt would be needed;
  the fetch succeeded.
- **Both paths must match the clone.** `pull.bat` and the `.vbs` hardcode the repo path. When the
  folder moves, both need updating — a stale path fails at logon with Windows Script Host `80070002`
  and the local copy silently stops updating (hit 2026-08-04).
- **The other failure mode:** if the stored token is revoked or expires, the pull fails — and by
  default it fails *silently*, so you would see a stale file and assume no jobs were found.
  `pull.bat` therefore appends every run to `pull-log.txt` ending in `RESULT: ok` or `RESULT: FAILED`.
  If the local file ever looks stale, read that log first.

Missed days are not lost: beats accumulate in the repo and all land on the next successful pull.

## Tech stack (for future research)
| Layer | Choice | What to read up on |
|---|---|---|
| Scheduler | claude.ai routines (cloud cron) | `/schedule`; cron in PKT; no local machine |
| Job data | Indeed MCP connector | `search_jobs`, `get_job_details`, `get_resume` |
| Lane B sourcing | Indeed connector, remote US/GB | career pages 403 from the cloud; WebSearch only spots employers |
| Checker | Agent tool subagent | separate adversarial pass, not self-review |
| VCS | git + `gh` CLI over HTTPS | routine needs push rights on a private repo |
| Local sync | Startup-folder VBS → `references/pull.bat` | on-logon Task Scheduler needs admin; Startup does not |

## Success criteria
Fires at 09:00 PKT with the laptop off · Indeed reachable from the cloud · zero re-shown **title +
company** pairs · every run lands on `main` so `git pull` updates the laptop · checker drops reported, never hidden.
