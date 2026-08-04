# Task list

Kept as history. Everything else now runs on the routine itself — it fires at 09:00 PKT, writes its
own outcome into `job-scout-progress.md`, and needs no task entry. What each finished goal
proved is in `working/outcome.md`; what the system is and where each file lives is in
`specs/spec.md`.

---

- [x] **1. Prove the cloud routine can push.** Fire a beat on demand with:

      /schedule run request watch now

      Pick **Daily Job Scout** (`trig_013RTh3ZRmfxMn8PWPauJAnD`). This runs the whole cycle — it is a
      real beat, not a dry run: it searches, judges, and writes real log entries. **Pass =** a new
      commit on `main` authored by the cloud session. **If it fails:** the checkout is read-only.
      Options then — (a) give the routine a PAT with `repo` scope, (b) have it open a PR instead of
      pushing, (c) have it print the log diff and apply it locally.

      **Passed 2026-08-03.** Fired at 08:09:15Z via the trigger API's `run` action, not
      `/schedule run`. Commit `ed466d7` landed on `main` at 08:16:44Z, author
      `Claude <noreply@anthropic.com>` — ~7½ minutes end to end, checkout writable, no PAT needed.
      The same beat proved the Indeed connector, lane B, the checker and the PR path; see
      `references/outcome.md`.
