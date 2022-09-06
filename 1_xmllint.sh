#! /bin/bash

for path in `find . -type f -name lote.xml -print`
do
	cd `dirname $path`
	xmllint --format lote.xml > loteformat.xml
	cd ..
	#echo $path
done


