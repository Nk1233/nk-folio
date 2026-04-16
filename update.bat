@echo off
cd /d %~dp0

echo ============================
echo Updating GitHub Repository...
echo ============================

:: Fix dubious ownership issue
git config --global --add safe.directory %cd%

:: Initialize repo if not already
git init

:: Remove old remote (if exists)
git remote remove origin 2>nul

:: Add your repo
git remote add origin https://github.com/Nk1233/nk-folio.git

:: Add all files
git add .

:: Commit changes
git commit -m "Auto update portfolio" 2>nul

:: Set branch
git branch -M main

:: Force push (overwrite repo)
git push -f origin main

echo ============================
echo DONE ✅ Repo Updated
echo ============================

pause