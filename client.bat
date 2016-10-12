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
	mkdir config
	mkdir plugin
	mkdir ui
	mkdir lua
	cd ../../
	windows\consoleui\consoleui.exe -t gameTb/client/setting client/asset/config
	windows\consoleui\consoleui.exe -t gameTb/client/table client/asset/table
	xcopy /R /Y script\client\*.* client\asset\lua\
	xcopy /R /Y /S gameui\* client\asset\ui\
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
