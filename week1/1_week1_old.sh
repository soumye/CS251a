#!/bin/bash

if [ "$#" -ne 2 ]
	then echo "Enter correct no of arguments"
	exit 1
fi;

a=$1
b=$2
# flag1=$(echo "$a" > "$b" | bc )
# flag2=$(echo "$a" = "$b" | bc )

if (( $a>$b ))
then	echo $a ">" $b;

elif (( $a==$b ))
then echo $a "=" $b ;

else 	echo $a "<" $b ;
fi;
