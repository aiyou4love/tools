#!/bin/sh
curl -o LuaJIT-2.1.0-beta2.tar.gz http://luajit.org/download/LuaJIT-2.1.0-beta2.tar.gz
tar -xf LuaJIT-2.1.0-beta2.tar.gz
rm -rf LuaJIT-2.1.0-beta2.tar.gz
cd LuaJIT-2.1.0-beta2
git clone https://github.com/valnoel/rapidxml.git
git clone git://code.csdn.net/Tencent/rapidjson.git
git clone https://github.com/curl/curl.git
