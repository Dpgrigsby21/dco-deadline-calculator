@echo off
cd /d "%~dp0"
echo Starting DCO Deadline Calculator at http://localhost:8317 ...
start "" "http://localhost:8317"
python -m http.server 8317
