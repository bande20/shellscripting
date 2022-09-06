#! /bin/bash

i=0
for path in `find . -type f -name premios.xml -print`
do
	i=$((i+1))
	cd `dirname $path`
	cat premios.xml | grep "Cantidad" > premios_Cantidad_tmp.txt
	sed 's/^[ \t]*//' premios_Cantidad_tmp.txt > premios_Cantidad.txt
	rm premios_Cantidad_tmp.txt
	cd ..
	#echo $path
done

echo $i "directories processed."

