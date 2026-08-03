# Spec — Daily Job Scout (cloud routine + GitHub spine)

## Goal
Scout Forward Deployed Engineer and client-facing delivery roles every day without the laptop being
on. The routine writes the repo; `D:\SIR-AMMAR\Indeed` catches up on `git pull` when the laptop wakes.

## Architecture
GitHub **private** repo `Maleehabilalmb/daily-job-scout` is the single source of truth.
- **Cloud routine** (claude.ai routines, 09:00 PKT daily) clones it, runs the beat, commits, pushes.
- **Laptop** (`D:\SIR-AMMAR\Indeed`) is a clone. The routine never writes `D:\` — a Startup-folder
  script (`job-scout-pull.vbs` → `pull.bat`) runs `git pull --ff-only` hidden at logon and logs to
  `pull-log.txt`. Missed days accumulate in the repo and land on the next pull.
- **Routine prompt** lives in `prompt.md` — the routine was created from it. Edit that file
  first, then update the routine, so the two never drift.
- **Write mode:** log entries go straight to `main`. Any change to the fact sheet, standing
  decisions or this spec opens a PR instead — and the routine never merges its own PR.
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
| CV read at run time from `FDE-CV/` | rationales must cite real CV lines, not a remembered profile |
| Prompt kept in `prompt.md` | the routine's instructions stay reviewable and version-controlled |

## Tech stack (for future research)
| Layer | Choice | What to read up on |
|---|---|---|
| Scheduler | claude.ai routines (cloud cron) | `/schedule`; cron in PKT; no local machine |
| Job data | Indeed MCP connector | `search_jobs`, `get_job_details`, `get_resume` |
| Lane B sourcing | WebSearch + WebFetch | Greenhouse / Lever / Workday career pages |
| Checker | Agent tool subagent | separate adversarial pass, not self-review |
| VCS | git + `gh` CLI over HTTPS | routine needs push rights on a private repo |
| Local sync | Startup-folder VBS → `pull.bat` | on-logon Task Scheduler needs admin; Startup does not |

## Candidate context
Maleeha Bilal — career changer; junior full-stack (TypeScript, React, Next.js) is the fallback lane.
Shipped, not coursework: Next.js site on Vercel, React Native + Expo + Firebase app in closed testing,
Playwright + MCP QA harness, n8n on Oracle Cloud ARM64. No CS degree, no paid SWE role. A flagship
FDE demo app is in progress — **not** evidence until live. Full fact sheet: `job-scout-progress.md`.

## Search lanes
- **A — Pakistan + remote:** Indeed PK connector.
- **B — International FDE:** Palantir, Databricks, Google Cloud (PSO / Customer Engineering), Salesforce and comparable delivery-engineering employers — career pages, not aggregators.
- Sponsorship required; postings silent on it are still shortlisted, flagged `sponsorship: unverified`.

## One beat
Exact instructions live in `prompt.md`. Shape: load the spine → search both lanes → pull the **full
JD** before judging → match against the fact sheet → **rechecker subagent** drops what was assumed
rather than verified → append every job seen (skips included), commit, push → report 3–5 jobs.

## Success criteria
Fires at 09:00 PKT with the laptop off · Indeed reachable from the cloud · zero re-shown job IDs · every run lands on `main` so `git pull` updates the laptop · checker drops reported, never hidden.
