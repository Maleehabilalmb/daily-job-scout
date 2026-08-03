# Spec — Daily Job Scout (cloud routine + GitHub spine)

## Problem
Run locally (Cowork, then Task Scheduler), the scout was skipped whenever the laptop slept.
A cloud routine survives sleep but cannot see `D:\` — so the spine must live where both reach.

## Architecture
GitHub **private** repo `Maleehabilalmb/daily-job-scout` is the single source of truth.
- **Cloud routine** (claude.ai routines, 09:00 PKT daily) clones it, runs the beat, commits, pushes.
- **Laptop** (`D:\SIR-AMMAR\Indeed`) is a clone; `git pull` on boot brings the run down.
- **Write mode:** log entries go straight to `main`. Any change to the fact sheet, standing
  decisions or this spec opens a PR instead — and the routine never merges its own PR.

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
| CV read at run time from `FDE-CV/` | rationales must cite real lines, not a remembered profile |

## Tech stack (for future research)
| Layer | Choice | What to read up on |
|---|---|---|
| Scheduler | claude.ai routines (cloud cron) | `/schedule`; cron in PKT; no local machine |
| Agent runtime | Claude Code, Opus, headless | prompt lives in the routine, not a local file |
| Job data | Indeed MCP connector | `search_jobs`, `get_job_details`, `get_resume` |
| Lane B sourcing | WebSearch + WebFetch | Greenhouse / Lever / Workday career pages |
| Checker | Agent tool subagent | separate adversarial pass, not self-review |
| State | Markdown in git | append-only job table = the dedup spine |
| VCS | git + `gh` CLI over HTTPS | routine needs push rights on a private repo |

## Candidate context
Maleeha Bilal — career changer targeting **Forward Deployed Engineer** / client-facing delivery,
junior full-stack (TypeScript, React, Next.js) as fallback. Shipped, not coursework: Next.js site
on Vercel, React Native + Expo + Firebase app in closed testing, Playwright + MCP QA harness, n8n
on Oracle Cloud ARM64. No CS degree, no paid SWE role. A flagship FDE demo app is in progress and
is **not** evidence until it is live.

## Search lanes
- **A — Pakistan + remote:** Indeed PK connector.
- **B — International FDE:** Palantir, Databricks, Google Cloud (PSO / Customer Engineering),
  Salesforce and comparable delivery-engineering employers.
- Sponsorship required; postings silent on it are still shortlisted, flagged `sponsorship: unverified`.

## One beat
1. Read `job-scout-progress.md` first — fact sheet, standing decisions, every job ID already seen.
2. Search both lanes; pull the **full JD** for anything plausible. Never judge on the title.
3. Write every match into the job log, citing the fact-sheet line it rests on. Keyword hits are not matches.
4. **Rechecker subagent:** for each shortlisted job — was this verified against her stated skills,
   or assumed from the title? Drop what fails and report each drop with its reason.
5. Append every job seen, add a beat entry, commit, push. Ambiguity → no shortlist, state what is unresolved.
6. Output 3–5 jobs max: one sentence on fit, one on what the checker verified or rejected.

## Success criteria
Fires at 09:00 PKT with the laptop off · Indeed reachable from the cloud · zero re-shown job IDs ·
every run lands on `main` so `git pull` updates the laptop · checker drops reported, never hidden.
