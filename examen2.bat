@echo off
title Creacion de menu

:inicio
echo ===========================
echo             MENU
echo ===========================
echo 1. Mostrar Ip
echo 2. verificar conexion a un ip
echo 3. verificar conexion a un dominio
echo 4. salir
echo ===========================
set /p menu=elige una opcion:
if %menu%==1 goto op1
if %menu%==2 goto op2
if %menu%==3 goto op3
if %menu%==4 goto salir

:op1
cls
ipconfig
pause>nul
cls
goto inicio

:op2
cls
set /p ip=Ingrese una IP:
ping %ip%
pause>nul
cls
goto inicio

:op3
cls
set /p do=Ingrese un dominio:
ping %do%
pause>nul
cls
goto inicio

:salir
cls
exit





