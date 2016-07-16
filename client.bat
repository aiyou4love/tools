::@echo off
cd ..
if not exist client (
	mkdir client
	cd client
	mkdir asset
	mkdir storage
	mkdir download
	mkdir update
	mkdir plugin
	mkdir log
	cd asset
	mkdir table
	mkdir plugin
	cd ../../
	windows\consoleui\consoleui.exe -t gameTb/client client/asset/table
)
::@echo on
