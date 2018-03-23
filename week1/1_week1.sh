#!/bin/bash

#Soumye Singhal
#150728

if [ "$#" -ne 2 ]
	then echo "Enter correct no of arguments"
	exit 1
fi;

a=$1
b=$2

re='^-?[0-9.]+$'
if ! [[ $1 =~ $re  ]] ; then
       echo "error: 1st argument is not a number"; exit 1
fi

if ! [[ $2 =~ $re  ]] ; then
       echo "error: 2nd argument is not a number" ; exit 1
fi


# flag1=$(echo "$a > $b" | bc )
# flag2=$(echo "$a" = "$b" | bc )

if [ $(bc <<< "$a > $b") -eq 1 ]
then	echo $a ">" $b;

elif [ $(bc <<< "$a< $b") -eq 1 ]
then echo $a "<" $b ;

else 	echo $a "=" $b ;
fi;
# jkkkkkkjjhhhhhh/