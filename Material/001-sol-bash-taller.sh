#!/bn/bash
echo "Borrando archivos anteriores"
rm *.txt
rm *.run
rm *.sh~
rm *.run~

echo "echo "Borrando Archivos txt"" >> 20202135080.run
echo "rm example.txt" >> 20202135080.run

echo -e "Indiqueme su nombre: "
echo "echo -e "Indiqueme su nombre: "" >> 20202135080.run

read nombre
echo "read nombre" >> 20202135080.run

echo "Su nombre es: $nombre" >> salida.txt
echo "echo "Su nombre es: '$nombre'" >> example.txt" >> 20202135080.run

echo "Ubicando su posición"
echo "echo "Ubicando su posición" >> example.txt" >> 20202135080.run

echo "Su ubicación es: `pwd`"
echo "Su ubicación es: `pwd`" >> salida.txt
echo "echo "Su ubicación es: `pwd`" >> example.txt" >> 20202135080.run

echo "Indique el nombre de la carpeta a revisar los permisos"
echo "echo "Indique el nombre de la carpeta a revisar los permisos"" >> 20202135080.run

echo "NOTA:Coloque coma justo antes del nombre de la carpeta a revisar"
echo "echo "NOTA:Coloque coma justo antes del nombre de la carpeta a revisar"" >> 20202135080.run

read carpeta
echo "read 'carpeta'" >> 20202135080.run

# Set comma as delimiter
IFS=','
echo "IFS=','" >> 20202135080.run

read -a strarr <<< "$carpeta"

echo "read -a strarr <<< '$carpeta'" >> 20202135080.run

echo "Ubicacion carpeta de trabajo : "$carpeta""
echo "echo "Ubicacion carpeta de trabajo : '$carpeta'"" >> 20202135080.run

echo "Los permisos asociados de la carpeta "${strarr[1]}" son: "
echo "Los permisos asociados de la carpeta "${strarr[1]}" son: " >> salida.txt
echo "echo "Los permisos asociados de la carpeta '${strarr[1]}' son: '`ls -la`'"" >> 20202135080.run
echo "echo "Los permisos asociados de la carpeta '${strarr[1]}' son: '`ls -la`'" >> example.txt" >> 20202135080.run

echo `ls -la`
echo `ls -la` >> salida.txt

echo "El nombre de este archivo es: $(basename $0)"
echo "El nombre de este archivo es:  $(basename $0)" >> salida.txt
echo "echo "El nombre de este archivo es: $(basename $0)"" >> 20202135080.run
echo "echo "El nombre de este archivo es:  $(basename $0)" >> example.txt" >> 20202135080.run

exit 0
less salida.txt
