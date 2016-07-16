@echo off
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
	cd common
	call build.bat
	cd ..
	cd engine
	call client.bat
	cd ..
	cd aspect
	call client.bat
	cd ..
	cd autoup
	call client.bat
)
@echo on
