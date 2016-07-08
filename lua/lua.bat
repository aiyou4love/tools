@echo off
git clone https://github.com/satoren/kaguya.git
xcopy /r /e /y kaguya\include include\
rd /s /q kaguya
@echo on
