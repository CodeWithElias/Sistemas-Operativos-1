@echo off
color 3f
set /p num1=Digite un numero:
set /p num2=Digite otro numero:
if %num1%==%num2% (echo Ambos son iguales) else (echo Son distintos)
pause > nul
exit