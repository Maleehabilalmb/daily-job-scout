# Task list — from here to a proven cycle

State: the cloud half is **proven**. Beat 2 (2026-08-03, fired by hand) ran the whole cycle in the
cloud, pushed its log to `main`, and opened PR #1 for the judgment-rule changes it wanted — both
halves of split write mode work. What remains unproven is **dedup across beats** and **local sync on
a real logon**.

This file holds only what is *undone*, plus a short record of what each proof actually showed. For
what the system is and where each file lives, read `specs/spec.md` — start with its Layout table.

---

## Proven — beat 2, commit `ed466d7`, 2026-08-03

- [x] **1. The cloud routine can push.** `ed466d7` on `main`, author `Claude
      <noreply@anthropic.com>`, 08:16:44Z — fired 08:09:15Z, so a full beat takes **~7½ minutes**. No
      PAT needed; the checkout is writable. Fired via the `run` action on
      `trig_013RTh3ZRmfxMn8PWPauJAnD`, not `/schedule run`.
      *Pre-work:* `specs/spec.md` and `references/prompt.md` both said push to `main`, which did not
      exist — the default branch was `master`, because this machine had `init.defaultBranch=master`
      set. Corrected in `3b9209c` and in the live routine before firing, then the branch was renamed
      `master` → `main` afterwards (GitHub rename API, so PR #1 was retargeted, not closed).
- [x] **2. Indeed works from the cloud.** 8 lane-A queries returned real postings; 14 full JDs
      pulled; 0 judged on title alone. No re-auth needed.
- [x] **3. Lane B is reachable — but not the way the prompt said.** Palantir, Lever and Databricks
      career pages all returned **HTTP 403** to WebFetch from the cloud; WebSearch surfaced only
      staffing-partner reposts. The beat recovered lane B by pointing the **Indeed connector at
      remote-US** (10 postings, `JOBSEARCH_48–57`, incl. Tensormesh — the only `sponsorship: yes`
      posting seen). `references/prompt.md` lane B and the live routine now describe that route.
- [x] **4. The checker really ran.** A separate `general-purpose` subagent kept 1 of 4 drafted and
      named each drop with a rule number — Veevo (rule 4 adjacency), ContentStudio (rule 6 needs
      clause *and* stack), AdalFi (upheld: *"being a bank employee is not the same as implementing
      software for banks"*). It also re-examined all 11 pre-checker drops and overturned none. No
      hardening needed; `references/prompt.md` step 4 works as written.
- [x] **11. The PR path works.** PR #1 *"Dedup on title+company, and route lane B through the
      connector"*, branch `propose-dedup-on-title-company`, opened 08:18:57Z — ~70s after the log
      push, which is why an early check saw only `main`. The routine correctly split its work: log
      entries pushed, judgment-rule changes proposed, nothing self-merged.

**Delivered: 1 job** (`JOBSEARCH_38`, AL GHANI Medical) against a 3–5 cap. Not padded — rule 8 held.

## Open

- [ ] **12. Close PR #1.** Its content was landed by hand instead of merged, because it was written
      against the pre-rename `master` and its two new Decisions rows plus the reworded success
      criteria would have pushed `specs/spec.md` past its 60-line limit. Everything it proposed is
      now on `main`: standing decision 10, the lane B rewrite, both Decisions rows, the corrected
      success criterion. Close it with a comment saying so — do not merge, or it will conflict.
- [ ] **5. Prove dedup across beats.** Beat 2 found that **Indeed job IDs are per-session, not per
      posting** (Taraz was `JOBSEARCH_1` on 08-01 and `JOBSEARCH_14` on 08-03) — dedup on ID alone
      fails silently. Standing decision 10 and `references/prompt.md` step 2 now say match on
      **title + company**. Beat 2 deduped that way and correctly closed 4 reopened entries instead of
      re-showing them as new, but that was the same beat that discovered the rule. **Pass =** run a
      third beat; zero postings from beat 2 reappear as new rows.
- [ ] **6. Prove local sync on a real logon.** Reboot, then check `pull-log.txt` for a fresh
      timestamp and `RESULT: ok`. Manual invocation already passed; a real logon has not been tested,
      and the network may not be up yet when it fires. If it logs `FAILED`, add a retry loop to
      `references/pull.bat`. *Note:* `pull.bat` hardcodes no branch, so the `master` → `main` rename
      does not affect it — but this is the first logon since the rename, so confirm rather than
      assume.

## Backlog

- [ ] **7. Re-judge the six reopened postings** — **4 of 6 done** in beat 2, all definitively dropped
      with full JDs pulled (Taraz and GRID on the rule-6 degree gate, GrowthRatio on 5+ yrs, Veevo by
      the checker). The corrected fact sheet rescued none of them. Remaining: `JOBSEARCH_9`
      (ADEQUATE SOLUTIONS) and `JOBSEARCH_3` (Volga) — neither re-surfaced in beat 2's searches, so
      they need a targeted lookup rather than another broad beat.
- [ ] **8. Ship the flagship FDE app**, then update the "Pending evidence" line in the fact sheet
      with its URL and repo, and reopen everything marked `reopen-when-flagship-ships`.
      *Sharpened by beat 2:* the one shortlisted job was screened on **3 live sites** (fact sheet
      supports 2 web + 1 Android) and on personally improved **PageSpeed / Core Web Vitals**, which
      the fact sheet cannot claim. Both are cheap to fix and both were blocking friction.
- [ ] **9. Decide the PR habit.** Now live, not hypothetical — beat 2 filed one on its first run. At
      roughly one proposal per interesting finding, these accumulate. Choose a review cadence, or
      they pile up unread.

---

## Known risks

- **Nothing alerts on failure.** If the routine errors at 09:00, there is no notification — the
  local file is simply stale. Check https://claude.ai/code/routines/trig_013RTh3ZRmfxMn8PWPauJAnD
  if a day looks empty.
- **A beat's PR arrives after its push.** ~70s apart in beat 2. Checking the repo immediately after
  the log commit will show no branch and no PR; wait, or check `gh pr list` separately.
- **An empty shortlist is a valid result**, not a bug. The fact sheet is deliberately honest about
  gaps, so some beats will legitimately return nothing. Beat 2 delivered 1 against a cap of 5.
- **The routine config holds its own copy of the prompt.** It is told the file wins, but the two can
  still drift — see the drift rule in `specs/spec.md` under Architecture.
