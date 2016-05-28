#!/bin/sh
curl -o LuaJIT-2.1.0-beta2.tar.gz http://luajit.org/download/LuaJIT-2.1.0-beta2.tar.gz
tar -xf LuaJIT-2.1.0-beta2.tar.gz
rm -rf LuaJIT-2.1.0-beta2.tar.gz
cd LuaJIT-2.1.0-beta2
make
cd ..
mkdir include
mkdir lib
mkdir bin
mkdir include/lua
cp LuaJIT-2.1.0-beta2/src/luaconf.h include/lua/
cp LuaJIT-2.1.0-beta2/src/lua.h include/lua/
cp LuaJIT-2.1.0-beta2/src/lauxlib.h include/lua/
cp LuaJIT-2.1.0-beta2/src/lualib.h include/lua/
cp LuaJIT-2.1.0-beta2/src/luajit.h include/lua/
cp LuaJIT-2.1.0-beta2/src/lua.hpp include/lua/
cp LuaJIT-2.1.0-beta2/src/libluajit.a lib/
cp LuaJIT-2.1.0-beta2/src/libluajit.so bin/
rm -r LuaJIT-2.1.0-beta2
