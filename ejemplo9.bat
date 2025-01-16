echo TEXTO DE PRIMERA LINEA > copiame.txt
echo TEXTO DE LA SEGUNDA LINEA >> copiame.txt
echo TEXTO DE LA SIGUIENTE LINEA >> copiame.txt
echo CONTINUACION DE LA SIGUIENTE LINEA >> copiame.txt
echo ESTA ES LA HORA ACTUAL >> copiame.txt
powershell -command "Get-Date -Format 'HH:mm:ss'" >> copiame.txt
echo ESTA ES LA FECHA ACTUAL >> copiame.txt
powershell -command "Get-Date -Format 'dd/MM/yyyy'" >> copiame.txt