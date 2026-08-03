# Task list — what is still open

The build and the cloud cycle are proven. What each finished goal showed is in
`references/outcome.md`; per-beat detail is in `references/job-scout-progress.md`. For what the
system is and where each file lives, read `specs/spec.md` — start with its Layout table.

**This file is not a running work log.** The routine fires itself at 09:00 PKT and writes its own
outcome into the job log — that needs no task entry. Only add something here if it needs a human.

---

## Watch on the next beat (no action needed to make it happen)

- **Dedup across beats.** Standing decision 10 now matches on **title + company**, because Indeed
  reassigns `JOBSEARCH_*` IDs every search session. Beat 2 both discovered the flaw and worked
  around it, so the rule has not yet survived a beat that started without knowing it. When the next
  beat lands, check that none of beat 2's 44 postings reappear as new rows. If they do, dedup is
  broken and the log needs a `git revert` before it compounds.

## Needs you

- **Prove local sync on a real logon.** Reboot, then check `pull-log.txt` for a fresh timestamp and
  `RESULT: ok`. Manual invocation passed; a real logon has not been tested, and the network may not
  be up yet when it fires. If it logs `FAILED`, add a retry loop to `references/pull.bat`.
  `pull.bat` hardcodes no branch, so the `master` → `main` rename does not affect it — but this is
  the first logon since, so confirm rather than assume.
- **Re-judge the last two reopened postings.** Four of six were closed by beat 2, all definitively
  dropped with full JDs pulled; the corrected fact sheet rescued none. Remaining: `JOBSEARCH_9`
  (ADEQUATE SOLUTIONS) and `JOBSEARCH_3` (Volga). Neither re-surfaced in beat 2's searches, so they
  need a targeted lookup rather than another broad beat.
- **Ship the flagship FDE app**, then update the "Pending evidence" line in the fact sheet with its
  URL and repo, and reopen everything marked `reopen-when-flagship-ships`. Beat 2 sharpened this: the
  one shortlisted job screened on **3 live sites** (fact sheet supports 2 web + 1 Android) and on
  personally improved **PageSpeed / Core Web Vitals**, which the fact sheet cannot claim. Both are
  cheap to fix and both were blocking friction.
- **Decide the PR habit.** The routine filed one on its first run and never merges its own. Pick a
  review cadence, or they pile up unread.

---

## Known risks

- **Nothing alerts on failure.** If the routine errors at 09:00, there is no notification — the
  local file is simply stale. Check https://claude.ai/code/routines/trig_013RTh3ZRmfxMn8PWPauJAnD
  if a day looks empty.
- **A beat's PR arrives after its push** — ~70s apart in beat 2. Checking the repo immediately after
  the log commit shows no branch and no PR; wait, or check `gh pr list` separately.
- **An empty shortlist is a valid result**, not a bug. The fact sheet is deliberately honest about
  gaps, so some beats will legitimately return nothing. Beat 2 delivered 1 against a cap of 5.
- **The routine config holds its own copy of the prompt.** It is told the file wins, but the two can
  still drift — see the drift rule in `specs/spec.md` under Architecture.
