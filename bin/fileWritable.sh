#!/bin/bash
PROG="$1"
FILE="$2"

[ $# -eq 1 ] && $PROG

[ $# -ne 2 ] && exit 1

if [[ -w "$FILE" || -w `dirname $FILE` && ! -f "$FILE" ]]
then
	$PROG $FILE
else
	read -n1 -p "No write permissions for $2, sudo all up in that motherfucker? " yn
	case $yn in
		Y|y ) sudo $PROG $FILE;;
		^C|^c ) exit;;
		* ) $PROG $FILE;;
	esac
fi
