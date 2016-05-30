@echo off
git clone https://github.com/curl/curl.git
cd curl\winbuild
nmake /f Makefile.vc mode=static VC=14 ENABLE_WINSSL=yes MACHINE=x64
cd ..\..
xcopy /r /e /y curl\builds\libcurl-vc14-x64-release-static-ipv6-sspi-winssl\include include\
copy /y curl\builds\libcurl-vc14-x64-release-static-ipv6-sspi-winssl\lib\libcurl_a.lib lib\libcurl.lib
rd /s /q curl

@echo on
