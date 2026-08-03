# Task list — from here to a proven cycle

State: the cloud half is **proven for pushing**. Beat 2 (2026-08-03, fired by hand) ran the whole
cycle in the cloud and landed on `master`. What remains unproven is the **PR path**, **dedup across
beats**, and **local sync on a real logon**.

This file holds only what is *undone*, plus a short record of what each proof actually showed. For
what the system is and where each file lives, read `specs/spec.md` — start with its Layout table.

---

## Proven — beat 2, commit `ed466d7`, 2026-08-03

- [x] **1. The cloud routine can push.** `ed466d7` on `master`, author `Claude
      <noreply@anthropic.com>`, 08:16:44Z — fired 08:09:15Z, so a full beat takes ~7½ minutes. No PAT
      needed; the checkout is writable. Fired via the `run` action on
      `trig_013RTh3ZRmfxMn8PWPauJAnD`, not `/schedule run`.
      *Pre-work:* `specs/spec.md` and `references/prompt.md` both said push to `main`, which has never
      existed — the repo's default branch is `master`. Corrected in `3b9209c` and in the live routine
      before firing. Had it not been, this step would have failed for the wrong reason.
- [x] **2. Indeed works from the cloud.** 8 lane-A queries returned real postings; 14 full JDs
      pulled; 0 judged on title alone. No re-auth needed.
- [x] **3. Lane B is reachable — but not the way the prompt says.** Palantir, Lever and Databricks
      career pages all returned **HTTP 403** to WebFetch from the cloud; WebSearch surfaced only
      staffing-partner reposts. The beat recovered lane B by pointing the **Indeed connector at
      remote-US** (10 postings, `JOBSEARCH_48–57`, incl. Tensormesh — the only `sponsorship: yes`
      posting seen). So: real international postings did land, via a route `references/prompt.md`
      does not describe. See open item 10.
- [x] **4. The checker really ran.** A separate `general-purpose` subagent kept 1 of 4 drafted and
      named each drop with a rule number — Veevo (rule 4 adjacency), ContentStudio (rule 6 needs
      clause *and* stack), AdalFi (upheld: *"being a bank employee is not the same as implementing
      software for banks"*). It also re-examined all 11 pre-checker drops and overturned none. No
      hardening needed; `references/prompt.md` step 4 works as written.

**Delivered: 1 job** (`JOBSEARCH_38`, AL GHANI Medical) against a 3–5 cap. Not padded — rule 8 held.

## Open — blocking

- [ ] **10. Fix lane B in `references/prompt.md`, then update the live routine.** It still says "go
      to their career pages, not aggregators", which is exactly what 403s from the cloud. Replace
      with the route that worked: Indeed connector, remote / US and GB, FDE and
      implementation-consultant queries. Keep career-page fetches only as a best-effort second pass.
      **Do not edit one without the other** — see the drift rule in `specs/spec.md`.
- [ ] **11. The PR path has never worked.** Beat 2's commit message and log both say a
      standing-decision change "follows by PR" — **no PR was opened, and no branch besides `master`
      exists.** The rule change was landed by hand instead (standing decision 10). Split write mode
      is therefore half-unproven: pushes work, PRs are unverified. Likeliest cause is `gh` being
      absent or unauthenticated in the cloud environment; the routine has `Bash` but nothing grants
      it a GitHub token beyond the checkout's. **Next:** have a beat try `gh auth status` and report,
      or drop the PR mechanism for a `references/proposals/` file pushed to `master` and reviewed by
      hand. Record whichever you pick in `specs/spec.md` under Decisions.

## Open — verification

- [ ] **5. Prove dedup across beats.** Beat 2 found that **Indeed job IDs are per-session, not per
      posting** (Taraz was `JOBSEARCH_1` on 08-01 and `JOBSEARCH_14` on 08-03) — dedup on ID alone
      fails silently. Standing decision 10 and `references/prompt.md` step 2 now say match on
      **title + company**. Beat 2 deduped that way and correctly closed 4 reopened entries instead of
      re-showing them as new, but that was the same beat that discovered the rule. **Pass =** run a
      third beat; zero postings from beat 2 reappear as new rows.
- [ ] **6. Prove local sync on a real logon.** Reboot, then check `pull-log.txt` for a fresh
      timestamp and `RESULT: ok`. Manual invocation already passed; a real logon has not been tested,
      and the network may not be up yet when it fires. If it logs `FAILED`, add a retry loop to
      `references/pull.bat`.

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
- [ ] **9. Decide the PR habit.** Moot until item 11 is settled — the routine has never successfully
      opened one.

---

## Known risks

- **Nothing alerts on failure.** If the routine errors at 09:00, there is no notification — the
  local file is simply stale. Check https://claude.ai/code/routines/trig_013RTh3ZRmfxMn8PWPauJAnD
  if a day looks empty.
- **A beat can claim work it did not do.** Beat 2 reported opening a PR that does not exist. Trust
  the repo state, not the beat-history entry: check `git ls-remote origin` for branches and
  `gh pr list` before believing a proposal was filed.
- **An empty shortlist is a valid result**, not a bug. The fact sheet is deliberately honest about
  gaps, so some beats will legitimately return nothing. Beat 2 delivered 1 against a cap of 5.
- **The routine config holds its own copy of the prompt.** It is told the file wins, but the two can
  still drift — see the drift rule in `specs/spec.md` under Architecture.
