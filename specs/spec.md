# Spec — Daily Job Scout (cloud routine + GitHub spine)

## Goal
Scout Forward Deployed Engineer and client-facing delivery roles every day without the laptop being
on. The routine writes the repo; `D:\SIR-AMMAR\Indeed` catches up on `git pull` when the laptop wakes.

## Layout
| Path | Holds |
|---|---|
| `specs/spec.md` | this file — what the system is, how it is built, and why |
| `references/prompt.md` | the instructions the routine runs, and how local sync works |
| `references/task.md` | what is still unproven, and the next step to prove it |
| `references/job-scout-progress.md` | the spine: fact sheet, standing decisions, every job seen |
| `references/pull.bat` | the local sync script |
| `assets/FDE-CV/` | CV variants the routine reads at run time |

Each fact lives in exactly one of these — they point at each other rather than repeat. **Any future
file goes in `references/`**, unless it is a spec (`specs/`) or a binary the routine reads (`assets/`).

## Architecture
GitHub **private** repo `Maleehabilalmb/daily-job-scout` is the single source of truth.
- **Cloud routine** (claude.ai routines, 09:00 PKT daily) clones it, runs the beat, commits, pushes.
- **Laptop** is a clone. The routine never writes `D:\` — a Startup-folder script pulls at logon;
  mechanism, auth and failure mode are in the `references/prompt.md` appendix.
- **Routine prompt** was created from `references/prompt.md`. Edit that file first, then update the
  routine, so the two never drift.
- **Write mode:** log entries go straight to `master` (the default branch — there is no `main`). Any
  change to the fact sheet, standing decisions or this spec opens a PR instead — never self-merged.
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
| Dedup on title + company, not job ID | Indeed reassigns `JOBSEARCH_*` per search session; ID-only dedup fails silently (proven 2026-08-03) |
| Lane B runs through the connector's remote-US search | Palantir / Lever / Databricks career pages return 403 to WebFetch from the cloud |
| Prompt kept in `references/prompt.md` | the routine's instructions stay reviewable and versioned |

## Tech stack (for future research)
| Layer | Choice | What to read up on |
|---|---|---|
| Scheduler | claude.ai routines (cloud cron) | `/schedule`; cron in PKT; no local machine |
| Job data | Indeed MCP connector | `search_jobs`, `get_job_details`, `get_resume` |
| Lane B sourcing | WebSearch + WebFetch | Greenhouse / Lever / Workday career pages |
| Checker | Agent tool subagent | separate adversarial pass, not self-review |
| VCS | git + `gh` CLI over HTTPS | routine needs push rights on a private repo |
| Local sync | Startup-folder VBS → `references/pull.bat` | on-logon Task Scheduler needs admin; Startup does not |

## Success criteria
Fires at 09:00 PKT with the laptop off · Indeed reachable from the cloud · zero re-shown
**title + company** pairs (not job IDs — see Decisions) · every run lands on `master` so `git pull`
updates the laptop · checker drops reported, never hidden.

## Next session
Nothing above is proven — no beat has ever run in the cloud. Open `references/task.md`.
