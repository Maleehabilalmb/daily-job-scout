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

---

## Next — package this as a claude.ai plugin (decided 2026-08-03, build tomorrow)

**Name:** `Claude-Routine-Trouble-Shooter`. One plugin covering both halves — creating a claude.ai
cloud routine, and diagnosing one that misbehaves.

**Home: a new public repo**, not this one. `daily-job-scout` is private and carries the CV, contact
details and the rejection log; it can neither be shown to an employer nor installed from without a
token. The plugin's content is method, so nothing is lost by separating it.

**Shape:** plugin root holds `.claude-plugin/plugin.json` (name, description, version, author) and
`skills/<name>/SKILL.md` — never put `skills/` inside `.claude-plugin/`. A
`.claude-plugin/marketplace.json` at the repo root makes it installable with
`/plugin marketplace add <owner>/<repo>`, then `/plugin install`. Plugins installed this way are
available in claude.ai chat, Claude Desktop and Cowork; skills are namespaced
`/claude-routine-trouble-shooter:<skill>`.

**Build loop:** `claude --plugin-dir ./Claude-Routine-Trouble-Shooter` to test without installing,
`/reload-plugins` after edits, `claude plugin validate ./<dir>` before publishing.

**Source material:** the four problems and the choices above — each one is a diagnostic rule.
