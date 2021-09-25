#!/bin/bash

export LANG=cs_CZ
export LANGUAGE=cs_CZ
export LC_ALL=cs_CZ

while [ "$1" != "" ]
		
do 

	SOUBOR=`basename $1 .fig`
	PP=`echo $SOUBOR | sed "s/\(^.\).*/\1/"`

	fig2dev -j -L png -b 5 -S 4 -m 3 $PP/$SOUBOR.fig ../source/img/$PP/$SOUBOR.png

	echo -ne "."

	convert -filter box -type optimize -strip -colors 128 -treedepth 4 ../source/img/$PP/$SOUBOR.png ../source/img/$PP/$SOUBOR.png
	
	echo -ne "."	
	
	shift

done
echo -ne "\n"
