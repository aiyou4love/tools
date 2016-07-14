@echo off
cd ../bin
if not exist asset (
	mkdir asset
	cd asset
	mkdir table
	cd ..
)
if not exist log (
	mkdir log
)
if not exist update (
	mkdir update
)
if not exist plugin (
	mkdir plugin
)
if not exist storage (
	mkdir storage
)
if not exist download (
	mkdir download
)
cd ../
command\consoleui\bin\Release\consoleui.exe -t gameTb bin/asset/table
@echo on
