@echo off
cd ..
call tools\lua\lua.bat
::call tools\luajit\luajit.bat
call tools\rapidxml\rapidxml.bat
call tools\rapidjson\rapidjson.bat
call tools\curl\curl.bat
call tools\boost\boost.bat
@echo on
