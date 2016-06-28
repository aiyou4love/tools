@echo off
cd ../autoup
if not exist build (
	mkdir build
)
cd build
if not exist asset (
	mkdir asset
)
if not exist update (
	mkdir update
)
if not exist storage (
	mkdir storage
)
cd ../../
command\consoleui\bin\Release\consoleui.exe -t gameTb autoup/build/asset
@echo on
