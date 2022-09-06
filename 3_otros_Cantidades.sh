#! /bin/bash

i=0
for path in `find . -type f -name otros.xml -print`
do
	i=$((i+1))
	cd `dirname $path`
	cat otros.xml | grep "Cantidad" > otros_Cantidad_tmp.txt
	sed 's/^[ \t]*//' otros_Cantidad_tmp.txt > otros_Cantidad.txt
	rm otros_Cantidad_tmp.txt
	cd ..
	#echo $path
done

echo $i "directories processed."

