# Plan — building a cloud routine that survives contact with reality

Seed for a reusable skill: how to stand up a claude.ai cloud routine, and how to diagnose one.

**Goal.** Scout Forward Deployed Engineer and delivery roles daily without the laptop on, with
results waiting locally when it wakes.

**Shape.** A claude.ai routine (cloud cron, 09:00 PKT, Opus 5) clones a private GitHub repo, runs a
six-step beat — load context, search, judge, check, push, report — and commits. The repo is the only
state: fact sheet, judging rules, every job seen. The laptop is a clone; a Startup-folder script
pulls at logon. The Indeed MCP connector supplies postings.

**Problems found by running it, not by planning it.**

- Spec said push to `main`; the default branch was `master`, because this machine had
  `init.defaultBranch=master`. Fixed *before* firing — otherwise the first test fails for the wrong
  reason and you debug the wrong layer.
- Indeed reassigns job IDs per search session, so ID-based dedup fails **silently** and re-shows
  everything. Key changed to title + company.
- Palantir, Databricks and Lever career pages return 403 to cloud fetches. The lane was recovered
  through the connector's remote-US search rather than abandoned.
- The routine's PR lands ~70s after its push; checking immediately reported a failure that had not
  happened.

**Choices that made it work.** Cloud cron over Windows Task Scheduler — beats must fire with the
laptop off. Prompt kept in a versioned file, routine updated in lockstep, or the two drift. Split
write mode: logs straight to `main`, judgment-rule changes by PR, never self-merged. A separate
checker subagent, because self-review rationalises its own shortlist. Startup folder over an
on-logon scheduled task, which needs admin rights.

**The FDE lesson.** Every fix came from an artifact — a commit hash, a 403, an ID that changed
between runs. Diagnose from evidence, correct the spec rather than the symptom, and record what
happened instead of what was expected.
