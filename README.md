# Daily Job Scout

A cloud routine that scouts Forward Deployed Engineer and client-facing delivery roles every day
at 09:00 PKT, whether or not this laptop is on.

```
specs/spec.md          what this is, the beat it runs, how it is built, and why
job-scout-progress.md  the spine: fact sheet, standing decisions, every job ever seen
references/pull.bat    local sync, run at logon
assets/FDE-CV/         CV variants the routine reads at run time
working/               how this was built and proven — the routine never reads these
```

Read `specs/spec.md` first. **The routine reads only that file and `job-scout-progress.md`** —
everything in `working/` is history and can be moved out of the repo without affecting a run.

The routine pushes here; the laptop pulls at logon. Run `git pull` if you want it sooner.
