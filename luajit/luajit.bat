@echo off
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
copy /y LuaJIT-2.1.0-beta2\src\lua51.lib lib\libluajit.lib
copy /y LuaJIT-2.1.0-beta2\src\lua51.dll bin\libluajit.dll
rd /s /q LuaJIT-2.1.0-beta2
@echo on
