@echo off
title Creacion de cuentas
set /p usuario="Escribe el nombre del usuario:"
cls
set /p pregunta="Deseas ponerle contrasena:"
if %pregunta%==si (goto pass) else (goto no)

:pass
set /p password="Escribe la contrasena:"
net user %usuario% %password% /add
pause>nul
exit

:no
net user %usuario% /add
pause > nul
exit

























