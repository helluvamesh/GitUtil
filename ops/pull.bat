@echo off

ECHO ---- PULL ----
ECHO.

cd ..

ECHO Checking for uncommitted local changes...
ECHO.
git status --porcelain
ECHO.

:PROMPT
SET /P ANSWER=Continue? (Y/N) 
IF /I "%ANSWER%" NEQ "Y" GOTO END

:PROMPT
SET /P BRANCH=Which branch? 

:PROMPT
SET /P AREYOUSURE=Pull from %BRANCH%? (Y/N) 
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END

ECHO.

git pull origin %BRANCH%

:END
ECHO.
PAUSE