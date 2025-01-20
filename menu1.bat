@echo off
title Creacion de menu

:inicio
echo ===========================
echo             MENU
echo ===========================
echo 1. Abrir calculadora
echo 2. Buscar en Youtube
echo 3. Salir
echo ===========================

set /p menu=elige una opcion:
if %menu%==1 goto op1
if %menu%==2 goto op2
if %menu%==3 goto salir

:op1
cls
start calc.exe
echo Presione cualquier tecla para volver al menu
pause>nul
cls
goto inicio

:op2
cls
set /p buscar=Buscar:
start https://www.youtube.com/results?search_query=%buscar%
echo Presione cualquier tecla para volver al menu
pause>nul
cls
goto inicio

:salir
cls
exit
















