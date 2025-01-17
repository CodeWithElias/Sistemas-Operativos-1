@echo off
color 3f
title menu
echo ================== M E N U ===============
echo ==========================================
echo 1. Crear usuario
echo 2. Eliminar usuario
echo 3. Salir
echo ==========================================
set /p op=Digite una opcion:

if %op%==1 goto crear
if %op%==2 goto eliminar
if %op%==3 goto salir

echo Opción no válida, intente de nuevo.
pause
goto menu

:crear
cls
echo --- Crear Usuario ---
set /p nombre=Ingrese el nombre del usuario: 
set /p contrasena=Ingrese la contraseña del usuario: 

rem Crea el usuario con la contraseña ingresada
net user %nombre% %contrasena% /add
if %errorlevel%==0 (
    echo Usuario "%nombre%" creado exitosamente.
) else (
    echo Ocurrió un error al crear el usuario.
)

pause
goto menu

:eliminar
cls
echo --- Eliminar Usuario ---
set /p nombre=Ingrese el nombre del usuario que desea eliminar: 

rem Elimina el usuario especificado
net user %nombre% /delete
if %errorlevel%==0 (
    echo Usuario "%nombre%" eliminado exitosamente.
) else (
    echo Ocurrió un error al eliminar el usuario.
)

pause
goto menu

:salir
cls
echo Saliendo del programa...
pause
exit