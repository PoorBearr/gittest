@echo off
setlocal
set "REPO_DIR=%~dp0"
set "GIT_NAME=Vladislav Begunov"
set "GIT_EMAIL=vladislav@example.com"
set "MSG=%~1"
if "%MSG%"=="" (
echo Error: Commit message is missing.
echo Usage: %~nx0 "Your commit message"
goto :finish
)
pushd "%REPO_DIR%"
git config user.name "%GIT_NAME%"
git config user.email "%GIT_EMAIL%"
git add -A
git commit -m "%MSG%"
git push
popd
echo.
echo Success! Changes pushed.
:finish
endlocal