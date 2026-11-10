@echo off
setlocal
set "TD_BIN="
for /d %%D in ("C:\Program Files\Derivative\TouchDesigner.2025*") do (
    if exist "%%D\bin\TouchDesigner.exe" set "TD_BIN=%%D\bin"
)
if not defined TD_BIN (
    for /d %%D in ("C:\Program Files\Derivative\TouchDesigner*") do (
        if exist "%%D\bin\TouchDesigner.exe" set "TD_BIN=%%D\bin"
    )
)
if not defined TD_BIN (
    echo TouchDesigner installation not found under C:\Program Files\Derivative\
    exit /b 1
)
set "PATH=%TD_BIN%;%PATH%"
start "" "%TD_BIN%\TouchDesigner.exe" -gpuformonitor 0 "%~dp0..\..\project\Luminosity_0_9.toe"
