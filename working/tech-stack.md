# Tech stack — reading list (HISTORY — not part of the running project)

**Not live.** Moved out of `specs/spec.md` on 2026-08-04: it was a reading list for future research,
and every choice in it was already stated once in the spec's Architecture, Decisions, The beat or
Local sync sections. Kept here so the pointers are not lost.

| Layer | Choice | What to read up on |
|---|---|---|
| Scheduler | claude.ai routines (cloud cron) | `/schedule`; cron in PKT; no local machine |
| Job data | Indeed MCP connector | `search_jobs`, `get_job_details`, `get_resume` |
| Lane B sourcing | Indeed connector, remote US/GB | career pages 403 from the cloud; WebSearch only spots employers |
| Checker | Agent tool subagent | separate adversarial pass, not self-review |
| VCS | git + `gh` CLI over HTTPS | routine needs push rights on a private repo |
| Local sync | Startup-folder VBS → `pull.bat` | on-logon Task Scheduler needs admin; Startup does not |
