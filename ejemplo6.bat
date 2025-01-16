@echo off
echo hola, copiaremos un archivo
pause
copy "copiame.txt" "copiado.txt"
move "copiado.txt" "C:\Users\Lenovo\Documents\PROYECTOS_PROGRAMAS\SISTEMAS OPERATIVOS1.1\copiado.txt"
del "copiame.txt"
exit