# Spec — Daily Job Scout (cloud routine + GitHub spine)

## Problem
Run locally (Cowork, then Task Scheduler), the scout was skipped whenever the laptop slept.
A cloud routine survives sleep but cannot see `D:\` — so the spine must live where both reach.

## Architecture
GitHub **private** repo `Maleehabilalmb/daily-job-scout` is the single source of truth.
- **Cloud routine** (claude.ai routines, 09:00 PKT daily) clones the repo, runs the beat,
  commits the updated `job-scout-progress.md`, pushes.
- **Laptop** (`D:\SIR-AMMAR\Indeed`) is a clone; `git pull` on boot brings the run down.

## Tech stack (for future research)
| Layer | Choice | What to read up on |
|---|---|---|
| Scheduler | claude.ai routines (cloud cron) | `/schedule` skill; cron expressed in PKT; no local machine |
| Agent runtime | Claude Code, Opus, headless | prompt lives in the routine, not a local file |
| Job data | Indeed MCP connector | `search_jobs`, `get_job_details`, `get_resume`; PK coverage |
| Lane B sourcing | WebSearch + WebFetch | Greenhouse / Lever / Workday career pages for FDE roles |
| Checker | Agent tool subagent | separate pass, adversarial; not self-review |
| State | Markdown in git | append-only job table = dedup spine |
| VCS | git + `gh` CLI (HTTPS, gh token) | private repo; routine needs push rights |
| Local sync | `git pull` on boot | optional one-line Task Scheduler job |
| CV source | PDF in `FDE-CV/` | read at run time so rationales cite real lines |

## Candidate context
Maleeha Bilal — career changer targeting **Forward Deployed Engineer** / client-facing delivery,
with junior full-stack (TypeScript, React, Next.js) as the fallback lane. Shipped work, not
coursework: Next.js site on Vercel, React Native + Expo + Firebase app in closed testing,
Playwright + MCP QA harness, n8n on Oracle Cloud ARM64 (Docker + Tailscale). No CS degree, no
paid SWE role. A flagship FDE demo app is in progress and is **not** evidence until it is live.

## Search lanes
- **A — Pakistan + remote:** Indeed PK connector.
- **B — International FDE:** Palantir, Databricks, Google Cloud (PSO / Customer Engineering),
  Salesforce and comparable delivery-engineering employers.
- Sponsorship is required. Postings silent on it are still shortlisted, flagged
  `sponsorship: unverified`. Never assert sponsorship a posting does not state.

## One beat
1. Read `job-scout-progress.md` first — fact sheet, standing decisions, every job ID seen.
2. Search both lanes; pull the **full JD** for anything plausible. Never judge on the title.
3. Match against the fact sheet, citing the line. Keyword overlap is not a match. Drop duplicates.
4. **Checker — a separate subagent:** for each shortlisted job, was this verified against her
   stated skills or assumed from the title? Drop what fails and report the drop with its reason.
5. Append every job seen, add a beat-history entry, commit, push.
6. Output 3–5 jobs max: one sentence on fit, one on what the checker verified or rejected.
   Zero qualifying jobs → an empty list plainly stated, never filler.

## Success criteria
1. Fires at 09:00 PKT with the laptop off; Indeed connector reachable from the cloud.
2. Zero previously-logged job IDs re-shown.
3. Every run commits; `git pull` reflects it in `D:\SIR-AMMAR\Indeed\job-scout-progress.md`.
4. Checker drops are reported, not hidden; no invented experience, no softened gaps.

## Open items
- Flagship FDE app: log URL + repo in the spine on launch, then re-open every posting marked
  `reopen-when-flagship-ships`.
- Six 2026-08-01 postings marked `Re-evaluate` — judged against a profile that was wrong.
