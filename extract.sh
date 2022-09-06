#! /bin/bash

i=0
for path in `find . -type f -name loteformat.xml -print`
do
	i=i+1
	cd `dirname $path`
	sed -n "/<Bonos/,/<\/Bonos/p" loteformat.xml > bonos.xml
	sed -n "/<Comisiones/,/<\/Comisiones/p" loteformat.xml > comisiones.xml
	sed -n "/<Otros/,/<\/Otros/p" loteformat.xml > otros.xml
	sed -n "/<Participaciones/,/<\/Participaciones/p" loteformat.xml > participaciones.xml
	sed -n "/<Premios/,/<\/Premios/p" loteformat.xml > premios.xml
	sed -n "/<Retiradas/,/<\/Retiradas/p" loteformat.xml > retidadas.xml
	cd ..
	#echo $path
done

echo $i " directories processed"

