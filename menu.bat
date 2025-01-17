@echo off
color 3f
title menu
echo ================== M E N U ===============
echo ==========================================
echo 1. Cerrar sesion
echo 2. Reiniciar
echo 3. Apagar
echo 4. Salir
echo ==========================================
set /p op=Digite una opcion:

if %op%==1 goto uno
if %op%==2 goto dos
if %op%==3 goto tres
if %op%==4 goto salir
pause>nul

: uno
cls
@echo off
shutdown /l
exit

: dos
cls
@echo off
shutdown /r
exit

: tres
cls
@echo off
set/p seg=En cuantos segundos desea apagar:
shutdown -s -t %seg%
exit

:salir
cls
exit