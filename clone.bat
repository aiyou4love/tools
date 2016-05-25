@echo off
curl -o LuaJIT-2.1.0-beta2.zip http://luajit.org/download/LuaJIT-2.1.0-beta2.zip
7z.exe x LuaJIT-2.1.0-beta2.zip
cd LuaJIT-2.1.0-beta2
git clone https://github.com/valnoel/rapidxml.git
git clone git://code.csdn.net/Tencent/rapidjson.git
git clone https://github.com/curl/curl.git
@echo on
