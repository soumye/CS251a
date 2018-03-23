#!/bin/bash

if [ "$#" -ne 3 ]
	then echo "Enter correct no of arguments"
	exit 1
fi;
grep $2 $1 | grep $3 
