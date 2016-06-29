@echo off
git clone https://github.com/valnoel/rapidxml.git
mkdir include\rapidxml
xcopy /r /y rapidxml\*.hpp include\rapidxml\
::rd /s /q rapidxml
@echo on
