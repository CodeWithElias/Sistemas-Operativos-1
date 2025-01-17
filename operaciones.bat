@echo off
set /p numero1=Digite un numero:
set /p numero2=Digite otro numero:

set /a suma=%numero1% + %numero2%
set /a resta=%numero1% - %numero2%
set /a multiplicacion=%numero1% * %numero2%
set /a division=%numero1% / %numero2%

echo Es la suma: %suma%
echo Es la resta: %resta%
echo Es la multiplicacion: %multiplicacion%
echo Es la division: %division%

pause > nul
exit