@echo off
git clone https://github.com/yanwei1983/luatinkerE.git
git clone git@github.com:aiyou4love/lua.git
xcopy /r /e /y luatinkerE\luatinkere lua\
cd lua
call build.bat
rd /s /q luatinkerE
rd /s /q lua
cd ..
@echo on
