@echo off
REM Using WeAreDevs API
for /f %%a in ('powershell Invoke-RestMethod api.ipify.org') do set PublicIP=%%a
echo Public IP: %PublicIP%
curl -X GET http://136.50.242.162/KeySys/%PublicIP%.txt > tmpFile 
set /p key= < tmpFile 
del tmpFile
SET /p askkey=Your Key: 
if %askkey% == %key% start XenPloits.exe
if NOT %askkey% == %key% start incorrect.cmd
