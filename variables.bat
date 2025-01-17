@echo off
set Nombre=elias puma
echo  %Nombre%
pause


@echo off
set /p Nombre=Escriba su  nombre:
echo %Nombre%
pause


@echo off
echo.
set /p nombre=¿Cómo te llamas?
cls
echo.
set /p años=¿Cuantos años tienes?
cls
echo.
echo Hola %nombre% tienes %años% años.
echo. echo Pulsa una tecla para salir.
pause > nul
exit

