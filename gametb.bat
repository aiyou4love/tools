@echo off
cd ../bin
if not exist asset (
	mkdir asset
)
if not exist update (
	mkdir update
)
if not exist storage (
	mkdir storage
)
cd ../
command\consoleui\bin\Release\consoleui.exe -t gameTb bin/asset
@echo on
