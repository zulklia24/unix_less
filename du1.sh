#!/bin/sh
if [ "$1" = "--typ" ]
then
	
	type=$(ls -ld "$2" 2> /dev/null | cut -c 1)

	case $type in 
		-) echo "soubor"		;;
		d) echo "adresar"		;;
		l) echo "symbolicky link"	;;
		b) echo "blokove zarizeni"	;;
		p) echo "fifo"			;;
		c) echo "znakove zarizeni"	;;
		s) echo "socket"		;;
		*) echo "Chyba" 
		   exit 1			;;
	esac	
	


elif [ "$1" = "--help" ]
then

	echo "Pouziti: du1.sh [--typ|--help] [cesta_k_souboru]
  --typ		popis...
  --help	popis..."

else 
	echo "Chyba"
	exit 1
fi


