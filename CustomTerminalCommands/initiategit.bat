@echo off
setlocal enabledelayedexpansion

:: Check if a git origin was provided
if "%~1"=="" (
    echo Please provide a git origin.
    exit /b
)

:: Set the git origin from the first argument
set "git_origin=%~1"
shift

:: Check if a commit message was provided
if "%~1"=="" (
    echo Please provide a commit message.
    exit /b
)

:: Set the commit message from the remaining arguments
set "commit_message="
:loop
if "%~1"=="" goto continue
set "commit_message=!commit_message! %~1"
shift
goto loop
:continue

:: Trim leading space from commit_message
set "commit_message=!commit_message:~1!"

:: Execute Git commands
git init
git commit -m "!commit_message!"
git branch -M main
git remote add origin "!git_origin!"
git push -u origin main