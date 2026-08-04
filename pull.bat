@echo off
REM Daily Job Scout - local sync. See "Local sync" in specs\spec.md.

set REPO=D:\CAARE\Q2\SIR-AMMAR\Indeed
set LOG=%REPO%\pull-log.txt

echo. >> "%LOG%"
echo ===== %DATE% %TIME% ===== >> "%LOG%"
"C:\Program Files\Git\cmd\git.exe" -C "%REPO%" pull --ff-only >> "%LOG%" 2>&1

if errorlevel 1 (
  echo RESULT: FAILED - check the GitHub credential in Git Credential Manager >> "%LOG%"
) else (
  echo RESULT: ok >> "%LOG%"
)
