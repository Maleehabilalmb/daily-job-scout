# Outcomes — what has been proven, and what it showed

One entry per goal that is finished. Each states the goal and what actually happened, in a few
lines. Nothing here is open work; open work lives in `references/task.md`, and per-beat detail lives
in `references/job-scout-progress.md`.

---

## Goal 1 — first beat test for GitHub cloud

**Goal:** prove the cloud routine can run a real beat and push to the repo, with the laptop out of
the loop. **Result: passed, 2026-08-03.** Beat fired by hand at 08:09:15Z; commit `ed466d7` landed on
`main` at 08:16:44Z, author `Claude <noreply@anthropic.com>` — so a full beat takes **~7½ minutes**
and the cloud checkout is writable with no PAT. One correction was needed first: the spec and prompt
both said push to `main`, which did not exist — the default branch was `master`.

## Goal 2 — Indeed connector reachable from the cloud

**Goal:** confirm the connector works from a cloud session, not just from this laptop.
**Result: passed, 2026-08-03.** Eight lane-A queries returned real postings; 14 full job
descriptions were pulled; nothing was judged on title alone. No re-authentication was needed.
It also exposed a mechanism flaw — see Goal 5.

## Goal 3 — lane B (international FDE roles) reachable

**Goal:** confirm the Palantir / Databricks / Google / Salesforce lane produces real postings rather
than being decorative. **Result: passed, but by a different route.** Their career pages return
**HTTP 403** to WebFetch from the cloud, and WebSearch surfaced only staffing-partner reposts. The
beat recovered the lane through the Indeed connector's remote-US search — 10 real postings, including
the only `sponsorship: yes` role seen. `references/prompt.md` and the live routine now use that route.

## Goal 4 — the checker is a genuinely separate pass

**Goal:** make sure the adversarial check is a real subagent, not the model reviewing itself.
**Result: passed, 2026-08-03.** A separate `general-purpose` subagent kept 1 of 4 drafted jobs and
named a rule number for every drop, then re-examined all 11 pre-checker drops and overturned none.
Its sharpest line, worth keeping: *"being a bank employee is not the same as implementing software
for banks."* `references/prompt.md` step 4 needs no hardening.

## Goal 5 — dedup key corrected before it could rot the log

**Goal:** none — this was found, not planned. **Result: fixed, 2026-08-03.** Indeed assigns
`JOBSEARCH_*` IDs **per search session, not per posting** (Taraz was `JOBSEARCH_1` on 08-01 and
`JOBSEARCH_14` on 08-03), so dedup on ID alone fails **silently** and re-shows every posting as new.
Now standing decision 10: match on **title + company**. Still to confirm on a beat that did not
discover the rule itself — see `references/task.md`.

## Goal 6 — split write mode works in both halves

**Goal:** log entries straight to `main`, judgment-rule changes by PR, never self-merged.
**Result: passed, 2026-08-03.** The beat pushed its log, then opened PR #1 ~70 seconds later
proposing the dedup rule and the lane B rewrite. Both were landed by hand and the PR closed as
superseded. Practical note: **the PR arrives after the push**, so a repo check run immediately after
the log commit will wrongly show no proposal.

## Goal 7 — branch renamed `master` → `main`

**Goal:** make the repo match the convention the docs already assumed. **Result: done, 2026-08-03.**
Cause was local, not GitHub: this machine had `init.defaultBranch=master` set, so `git init` made
`master` and GitHub adopted the first branch pushed. Renamed through GitHub's rename API so open PRs
were retargeted rather than closed, and `init.defaultBranch=main` set globally so new repos do not
repeat it. `references/pull.bat` hardcodes no branch, so local sync was unaffected.
