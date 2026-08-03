# Task list — from here to a proven cycle

State: everything is **built** but the cloud half is **unproven**. No beat has ever run in the
cloud. Work the blocking section first — if step 1 fails, steps 2–5 cannot be trusted.

This file holds only what is *undone*. For what the system is and where each file lives, read
`specs/spec.md` — start with its Layout table.

---

## Blocking — do these first

- [ ] **1. Prove the cloud routine can push.** Fire a beat on demand with:

      /schedule run request watch now

      Pick **Daily Job Scout** (`trig_013RTh3ZRmfxMn8PWPauJAnD`). This runs the whole cycle — it is a
      real beat, not a dry run: it searches, judges, and writes real log entries. **Pass =** a new
      commit on `main` authored by the cloud session. **If it fails:** the checkout is read-only.
      Options then — (a) give the routine a PAT with `repo` scope, (b) have it open a PR instead of
      pushing, (c) have it print the log diff and apply it locally. Pick one and record the choice in
      `specs/spec.md` under Decisions.

- [ ] **2. Confirm Indeed works from the cloud.** Same run. The connector is attached, but it has
      only ever been used from this laptop. **Pass =** the beat's log entries carry real Indeed job
      IDs. **Fail =** re-auth the connector at https://claude.ai/customize/connectors.

- [ ] **3. Confirm lane B is actually reachable.** Palantir / Databricks / Google / Salesforce
      career pages are JS-heavy and often bot-blocked. **Pass =** at least one real international
      posting in the log. **Fail =** lane B is decorative — either drop it from `references/prompt.md` or
      switch it to Indeed's remote-worldwide search and say so.

## Verification — after the first successful beat

- [ ] **4. Check the checker actually ran.** Read the new beat-history entry: it must name what the
      subagent dropped and why. If it only says "checker passed", the model skipped the separate
      step and `references/prompt.md` step 4 needs hardening.
- [ ] **5. Prove dedup.** Run a second beat. **Pass =** zero job IDs from beat 1 reappear.
- [ ] **6. Prove local sync on a real logon.** Reboot, then check `pull-log.txt` for a fresh
      timestamp and `RESULT: ok`. Manual invocation already passed; a real logon has not been tested,
      and the network may not be up yet when it fires. If it logs `FAILED`, add a retry loop to
      `references/pull.bat`.

## Backlog — once the cycle is proven

- [ ] **7. Re-judge the six reopened postings** marked `Re-evaluate` in the job log. They were
      dropped against a profile that wrongly recorded zero programming experience.
- [ ] **8. Ship the flagship FDE app**, then update the "Pending evidence" line in the fact sheet
      with its URL and repo, and reopen everything marked `reopen-when-flagship-ships`.
- [ ] **9. Decide the PR habit.** The routine may open PRs proposing changes to its own judgment
      rules. It never merges them. Choose how often you review them, or they will pile up unread.

---

## Known risks

- **Nothing alerts on failure.** If the routine errors at 09:00, there is no notification — the
  local file is simply stale. Check https://claude.ai/code/routines/trig_013RTh3ZRmfxMn8PWPauJAnD
  if a day looks empty.
- **An empty shortlist is a valid result**, not a bug. The fact sheet is deliberately honest about
  gaps, so some beats will legitimately return nothing.
- **The routine config holds its own copy of the prompt.** It is told the file wins, but the two can
  still drift — see the drift rule in `specs/spec.md` under Architecture.
