#! /bin/bash

i=0
for path in `find . -type f -name comisiones.xml -print`
do
	i=$((i+1))
	cd `dirname $path`
	cat comisiones.xml | grep "Cantidad" > comisiones_Cantidad_tmp.txt
	sed 's/^[ \t]*//' comisiones_Cantidad_tmp.txt > comisiones_Cantidad.txt
	rm comisiones_Cantidad_tmp.txt
	cd ..
	#echo $path
done

echo $i "directories processed."

