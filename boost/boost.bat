@echo off
tools\curl.exe -o boost_1_61_0.7z http://iweb.dl.sourceforge.net/project/boost/boost/1.61.0/boost_1_61_0.7z
tools\7z.exe x boost_1_61_0.7z
del /q /s /f boost_1_61_0.7z
cd boost_1_61_0
call bootstrap.bat
b2 toolset=msvc address-model=64 stage
cd ..
mkdir include\boost
xcopy /r /y boost_1_61_0\stage\lib\*.lib lib\
xcopy /r /e /y boost_1_61_0\boost include\boost\
rd /s /q boost_1_61_0
@echo on
