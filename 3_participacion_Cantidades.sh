#! /bin/bash

i=0
for path in `find . -type f -name participaciones.xml -print`
do
	i=$((i+1))
	cd `dirname $path`
	cat participaciones.xml | grep "Cantidad" > participacion_Cantidad_tmp.txt
	sed 's/^[ \t]*//' participacion_Cantidad_tmp.txt > participacion_Cantidad.txt
	rm participacion_Cantidad_tmp.txt
	cd ..
	#echo $path
done

echo $i "directories processed."

