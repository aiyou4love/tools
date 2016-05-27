@echo off
git clone https://code.csdn.net/Tencent/rapidjson.git
xcopy /r /e /y rapidjson\include include\
rd /s /q rapidjson
@echo on
