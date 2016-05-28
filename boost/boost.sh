#!/bin/sh
curl -o boost_1_61_0.tar.bz2 http://pilotfiber.dl.sourceforge.net/project/boost/boost/1.61.0/boost_1_61_0.tar.bz2
tar --bzip2 -xf boost_1_61_0.tar.bz2
rm -rf boost_1_61_0.tar.bz2
cd boost_1_61_0
./bootstrap.sh
./b2 toolset=darwin address-model=64 link=static runtime-link=static stage
cd ..
cp boost_1_61_0/stage/lib/*.a lib/
cp -rf boost_1_61_0/boost include/
rm -rf boost_1_61_0
@echo on
