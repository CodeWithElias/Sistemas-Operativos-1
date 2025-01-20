@echo off
:menu
cls
title Menu de Administración de Usuarios
echo ===============================
echo 1. Crear usuario
echo 2. Crear usuario con contrasena
echo 3. Eliminar usuario
echo 4. Modificar usuario (nombre)
echo 5. Crear usuario administrador
echo 6. Salir
echo ===============================
set /p opcion="Elige una opcion (1-6): "

if "%opcion%"=="1" goto crearUsuario
if "%opcion%"=="2" goto crearUsuarioConContrasena
if "%opcion%"=="3" goto eliminarUsuario
if "%opcion%"=="4" goto modificarUsuario
if "%opcion%"=="5" goto crearUsuarioAdministrador
if "%opcion%"=="6" goto salir

echo Opción no válida. Presiona una tecla para volver al menú.
pause > nul
goto menu

:crearUsuario
cls
@echo off
set /p usuario="Escribe el nombre del usuario a crear: "
net user %usuario% /add
echo Usuario %usuario% creado exitosamente.
pause > nul
goto menu

:crearUsuarioConContrasena
cls
@echo off
set /p usuario="Escribe el nombre del usuario a crear: "
set /p password="Escribe la contraseña del usuario: "
net user %usuario% %password% /add
echo Usuario %usuario% creado con contraseña exitosamente.
pause > nul
goto menu

:eliminarUsuario
cls
@echo off
set /p usuario="Escribe el nombre del usuario a eliminar: "
net user %usuario% /delete
echo Usuario %usuario% eliminado exitosamente.
pause > nul
goto menu

:modificarUsuario
cls
@echo off
set /p usuario="Escribe el nombre del usuario a modificar: "
set /p nuevoNombre="Escribe el nuevo nombre del usuario: "
net user %usuario% /add
wmic useraccount where "name='%usuario%'" rename %nuevoNombre%
net user %usuario% /delete
echo Usuario %usuario% modificado a %nuevoNombre% exitosamente.
pause > nul
goto menu

:crearUsuarioAdministrador
cls
@echo off
set /p usuario="Escribe el nombre del usuario administrador a crear: "
net user %usuario% /add /active:yes /expires:never /passwordchg:no
net localgroup Administradores %usuario% /add
echo Usuario administrador %usuario% creado exitosamente.
pause > nul
goto menu

:salir
cls
exit

