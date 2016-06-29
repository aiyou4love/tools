#!/bin/sh
git clone https://code.csdn.net/Tencent/rapidjson.git
cp -rf rapidjson/include/rapidjson include/
::rm -rf rapidjson
