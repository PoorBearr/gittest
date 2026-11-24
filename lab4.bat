@echo off
setlocal
set "REPO_DIR=%~dp0"
set "GIT_NAME=PoorBear"
set "GIT_EMAIL=sorkyeagle@gmail.com"
set "MSG=%~1"
pushd "%REPO_DIR%"
git config user.name "%GIT_NAME%"
git config user.email "%GIT_EMAIL%"
git add -A
git commit -m "%MSG%"
git push
popd
echo.
echo Success
endlocal