@echo off
color 3f
set /p num=Digite un numero:
if %num% GTR 0 goto pos
if %num% LSS 0 goto neg
:pos
@echo off
echo El numero es positivo
pause > nul
exit
:neg
@echo off
echo El numero es negativo
pause > nul
exit