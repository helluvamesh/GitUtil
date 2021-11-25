@echo off

ECHO ---- CLONE BRANCH ----
ECHO.

cd .

:PROMPT
SET /P REPO=Which repository (user/repo)? 

:PROMPT
SET /P BRANCH=Which branch? 

:PROMPT
SET /P AREYOUSURE=Clone %REPO%/%BRANCH%? (Y/N) 
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END

ECHO.

git clone -b %BRANCH% https://github.com/%REPO%

:END
ECHO.
PAUSE