@echo off
setlocal enabledelayedexpansion

:: Check if a commit message was provided
if "%~1"=="" (
    echo Please provide a commit message.
    exit /b
)

:: Combine all arguments into a single commit message
set "commit_message="
:loop
if "%~1"=="" goto continue
set "commit_message=!commit_message! %~1"
shift
goto loop
:continue

:: Trim leading space
set "commit_message=!commit_message:~1!"

:: Execute Git commands
git add .
git commit -m "!commit_message!"
git push origin main