@echo off

ECHO ---- CLONE ALL BRANCHES ----
ECHO.

cd .

:PROMPT
SET /P REPO=Which repository (user/repo)? 

:PROMPT
SET /P AREYOUSURE=Clone %REPO%? (Y/N) 
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END

ECHO.

git clone https://github.com/%REPO%

:END
ECHO.
PAUSE