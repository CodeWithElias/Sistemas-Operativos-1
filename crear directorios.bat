@echo off
:: Configuración de la ruta origen y destino
set ORIGEN=C:\Users\Lenovo\Documents
set DESTINO=E:\

:: Crear carpetas en la memoria USB
mkdir "%DESTINO%\backup"

mkdir "%DESTINO%\backup\Excel"
mkdir "%DESTINO%\backup\Word"
mkdir "%DESTINO%\backup\Informe"
mkdir "%DESTINO%\backup\Imagenes"

:: Copiar archivos Excel (.xls, .xlsx)
xcopy "%ORIGEN%\.xls" "%DESTINO%\backup\Excel" /s /i
xcopy "%ORIGEN%\.xlsx" "%DESTINO%\backup\Excel" /s /i
echo Archivos Excel copiados correctamente.

:: Copiar archivos Word (.doc, .docx)
xcopy "%ORIGEN%\.doc" "%DESTINO%\backup\Word" /s /i
xcopy "%ORIGEN%\.docx" "%DESTINO%\backup\Word" /s /i

echo Archivos Word copiados correctamente.

:: Crear un archivo con datos de usuario, fecha y hora
set FECHA=%date%
set HORA=%time%
echo Nombre de Usuario: %USERNAME% > "%DESTINO%\backup\Informe\info.txt"
echo Fecha: %FECHA% >> "%DESTINO%\backup\Informe\info.txt"
echo Hora: %HORA% >> "%DESTINO%\backup\Informe\info.txt"
echo Datos de usuario guardados correctamente.


:: Copiar imágenes (.jpg, .png, .bmp)
xcopy "%ORIGEN%\*.jpg" "%DESTINO%\backup\Imagenes" /s /i
xcopy "%ORIGEN%\*.png" "%DESTINO%\backup\Imagenes" /s /i
echo Imágenes copiadas correctamente.

:: Finalizar
echo Backup completado.
pause