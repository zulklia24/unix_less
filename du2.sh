#!/bin/sh

case $1 in
	"--normal")

	for i in `seq 2 $#`
	do 
		echo "${!i}"
	done;;

	"--reverse")

	for i in `seq 1 $(($# - 1))`
	do
		num=$(($# - $i + 1))
		echo "${!num}"
	done;;

	"--subst")
	
	A=$2
	B=$3
	shift 3
	echo ${@//$A/$B};;

	"--len")

	for i in `seq 2 $#`
	do 
		argument=${!i}
		echo -n "${#argument} "
	done
	echo;;

	"--help")

	echo "Pouzitie: uloha02.sh [OPTION] [args]
  --normal	popis...
  --reverse	popis...
  ..."
		
			;;
	*)

			;;

esac
exit 0;

