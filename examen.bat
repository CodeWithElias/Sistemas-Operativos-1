@echo off

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

cd C:\Users\%nombre%
mkdir C:\Users\%nombre%\MisDocumentos
mkdir C:\Users\%nombre%\MisDocumentos\Imagenes


xcopy "C:\Users\Lenovo\Documents\*.jpg"  "C:\Users\%nombre%\MisDocumentos\Imagenes" /s /i
xcopy "C:\Users\Lenovo\Documents\*.png"  "C:\Users\%nombre%\MisDocumentos\Imagenes" /s /i
xcopy "C:\Users\Lenovo\Documents\*.bmp"  "C:\Users\%nombre%\MisDocumentos\Imagenes" /s /i

echo completado
puase