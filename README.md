# Daily Job Scout

A cloud routine that scouts Forward Deployed Engineer and client-facing delivery roles every day
at 09:00 PKT, whether or not this laptop is on.

```
specs/spec.md                     what this is, how it is built, and why
references/prompt.md              the instructions the routine runs
references/task.md                what is still unproven — start here in a new session
references/job-scout-progress.md  the spine: fact sheet, standing decisions, every job ever seen
references/pull.bat               local sync, run at logon
assets/FDE-CV/                    CV variants the routine reads at run time
```

Read `specs/spec.md` first. New files belong in `references/`.

The routine pushes here; the laptop pulls at logon. Run `git pull` if you want it sooner.
