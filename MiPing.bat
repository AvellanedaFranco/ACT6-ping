@echo off

:MENU
cls
echo --- MiPing.bat ---
echo 1. Loopback (127.0.0.1)
echo 2. Ver IP (ipconfig)
echo 3. Ping estandar (4 paquetes)
echo 4. Ping continuo (-t)
echo 5. Ping 10 paquetes (-n 10)
echo 6. Ping 1000 bytes (-l 1000)
echo 7. Resolver nombre de host (-a)
echo.
set /p op=Opcion: 

if "%op%"=="1" ping 127.0.0.1
if "%op%"=="2" ipconfig
if "%op%"=="3" set /p x=Ingrese la URL o IP: & ping %x%
if "%op%"=="4" set /p x=Ingrese la URL o IP: & ping -t %x%
if "%op%"=="5" set /p x=Ingrese la URL o IP: & ping -n 10 %x%
if "%op%"=="6" set /p x=Ingrese la URL o IP: & ping -l 1000 %x%
if "%op%"=="7" set /p x=Ingrese el IP: & ping -a %x%

pause
goto MENU