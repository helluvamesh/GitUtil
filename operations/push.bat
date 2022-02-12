@echo off

ECHO ---- PUSH ----
ECHO.

cd ..

:PROMPT
SET /P BRANCH=Which branch? 

:PROMPT
SET /P MESSAGE=What's the commit message? 

:PROMPT
SET /P AREYOUSURE=Push to %BRANCH%? (Y/N) 
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END

ECHO.

git add .
git commit -m "%MESSAGE%"
git push origin %BRANCH%

:END
ECHO.
PAUSE