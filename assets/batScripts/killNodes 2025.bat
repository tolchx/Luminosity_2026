@echo on

cd /d "%~dp0..\externalTools\PSTools"

start pskill.exe \\192.168.0.102 -t -u XI-USER -p pool TouchDesigner.exe
start pskill.exe \\192.168.0.103 -t -u XI-USER -p pool TouchDesigner.exe
start pskill.exe \\192.168.0.104 -t -u XI-USER -p pool TouchDesigner.exe
