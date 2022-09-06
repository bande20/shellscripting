#! /bin/bash

i=0
for path in `find . -type f -name bonos.xml -print`
do
	i=$((i+1))
	cd `dirname $path`
	cat bonos.xml | grep "Cantidad" > bonos_Cantidad_tmp.txt
	sed 's/^[ \t]*//' bonos_Cantidad_tmp.txt > bonos_Cantidad.txt
	rm bonos_Cantidad_tmp.txt
	cd ..
	#echo $path
done

echo $i "directories processed."

