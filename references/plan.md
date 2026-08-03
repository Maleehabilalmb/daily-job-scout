# Plan — a cloud routine that survives contact with reality

A reusable pattern for standing up and diagnosing claude.ai cloud routines.

**Goal.** Scout Forward Deployed Engineer and delivery roles daily without the laptop on.

**Shape.** A claude.ai routine (cloud cron, 09:00 PKT, Opus 5) clones a private GitHub repo, runs a
six-step beat and commits. The repo is the only state: rules, fact sheet, every job seen. The laptop
is a clone; a Startup-folder script pulls at logon. Indeed's MCP connector supplies postings.

**Problems found by running it, not planning it.**

- Spec said push to `main`; the default branch was `master`, from a local `init.defaultBranch`.
  Fixed before firing, or the first test fails for the wrong reason.
- Indeed reassigns job IDs per search session, so ID-based dedup fails **silently**. Key changed to
  title + company.
- Palantir, Databricks and Lever career pages 403 cloud fetches; the lane was recovered through the
  connector's remote-US search, not abandoned.
- The routine's PR lands ~70s after its push; checking immediately reported a failure that had not
  happened.

**Choices that made it work.** Cloud cron over Task Scheduler — beats must fire with the laptop off.
Prompt in a versioned file, routine updated in lockstep, or they drift. Split write mode: logs to
`main`, rule changes by PR, never self-merged. A separate checker subagent, because self-review
rationalises. Startup folder over an on-logon task, which needs admin.

**The FDE lesson.** Every fix came from an artifact — a commit hash, a 403, an ID that changed.
Diagnose from evidence, correct the spec not the symptom, record what happened rather than what was
expected.
