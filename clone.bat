@echo off
cd ..
tools\curl.exe -o LuaJIT-2.1.0-beta2.zip http://luajit.org/download/LuaJIT-2.1.0-beta2.zip
tools\7z.exe x LuaJIT-2.1.0-beta2.zip
del /q /s /f LuaJIT-2.1.0-beta2.zip
cd LuaJIT-2.1.0-beta2/src
call msvcbuild.bat
cd ../..
mkdir include
mkdir lib
mkdir bin
mkdir include\lua
xcopy /r /y LuaJIT-2.1.0-beta2\src\luaconf.h include\lua\
xcopy /r /y LuaJIT-2.1.0-beta2\src\lua.h include\lua\
xcopy /r /y LuaJIT-2.1.0-beta2\src\lauxlib.h include\lua\
xcopy /r /y LuaJIT-2.1.0-beta2\src\lualib.h include\lua\
xcopy /r /y LuaJIT-2.1.0-beta2\src\luajit.h include\lua\
xcopy /r /y LuaJIT-2.1.0-beta2\src\lua.hpp include\lua\
xcopy /r /y LuaJIT-2.1.0-beta2\src\lua51.lib lib\libluajit.lib
xcopy /r /y LuaJIT-2.1.0-beta2\src\lua51.dll bin\libluajit.dll
rd /s /q LuaJIT-2.1.0-beta2
git clone https://github.com/valnoel/rapidxml.git
mkdir include\rapidxml
xcopy /r /y rapidxml\*.hpp include\rapidxml\
rd /s /q rapidxml
git clone https://code.csdn.net/Tencent/rapidjson.git
xcopy /r /e /y rapidjson\include include\
rd /s /q rapidjson
git clone https://github.com/curl/curl.git
cd curl\winbuild
nmake /f Makefile.vc mode=static VC=12 ENABLE_WINSSL=yes MACHINE=x64
cd ..\..
xcopy /r /e /y curl\builds\libcurl-vc12-x64-release-static-ipv6-sspi-winssl\include include\
xcopy /r /y curl\builds\libcurl-vc12-x64-release-static-ipv6-sspi-winssl\lib\libcurl_a.lib lib\
rd /s /q curl
@echo on
