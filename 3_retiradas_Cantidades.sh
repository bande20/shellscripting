#! /bin/bash

i=0
for path in `find . -type f -name retidadas.xml -print`
do
	i=$((i+1))
	cd `dirname $path`
	cat retidadas.xml | grep "Importe" > retiradas_Cantidad_tmp.txt
	sed 's/^[ \t]*//' retiradas_Cantidad_tmp.txt > retiradas_Cantidad.txt
	rm retiradas_Cantidad_tmp.txt
	cd ..
	#echo $path
done

echo $i "directories processed."

