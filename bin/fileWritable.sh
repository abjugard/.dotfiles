#!/bin/bash
PROG="$1"
FILE="$2"

FILES="${*:2}"

[ $# -eq 1 ] && $PROG

[ $# -ne 2 ] && exit 1

if [[ -w "$FILE" || -w `dirname $FILE` && ! -f "$FILE" ]]
then
	$PROG $FILES
else
	read -n1 -p "No write permissions for $2, sudo all up in that motherfucker? " yn
	case $yn in
		Y|y ) 
			echo ""
			sudo $PROG $FILES;;
		^C|^c ) 
			echo ""
			exit;;
		* ) 
			echo ""
			$PROG $FILES;;
	esac
fi
