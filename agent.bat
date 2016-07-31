@echo off
cd ..
if not exist agent (
	mkdir agent
	cd agent
	mkdir asset
	mkdir storage
	mkdir download
	mkdir update
	mkdir plugin
	mkdir log
	cd asset
	mkdir table
	mkdir plugin
	mkdir ui
	mkdir lua
	cd ../../
	windows\consoleui\consoleui.exe -t gameTb/agent agent/asset/table
	xcopy /R /Y script\agent\*.* agent\asset\lua\
	xcopy /R /Y /S gameui\* agent\asset\ui\
	cd common
	call build.bat
	cd ..
	cd engine
	call agent.bat
	cd ..
	cd aspect
	call agent.bat
	cd ..
	cd autoup
	call agent.bat
)
@echo on
