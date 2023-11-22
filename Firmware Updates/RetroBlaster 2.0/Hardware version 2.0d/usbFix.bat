@echo off

echo USB Descriptor fix for Windows 10
echo. 
echo.
echo This fixes an issue where Windows 10 refuses to 
echo accept the USB descriptor of the RetroBlaster, 
echo specifically the 2.0D hardware revision.
echo.
echo This program bypasses Windows 10's refusal 
echo and forces it to recognize the device.
echo.
echo This only needs to be run ONCE!
echo.

pause

echo.
echo.

reg add "HKLM\SYSTEM\CurrentControlSet\Control\usbflags\03EB2FF90000" /v SkipBOSDescriptorQuery /t REG_BINARY /d 01000000 /f

echo.
echo.

pause

cls