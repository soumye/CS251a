#!/bin/bash

if [ ! -f "$1" ]
then echo "file doesn't exist"
		exit
fi


minn=$( awk 'BEGIN{first=1;} 
     {if (first) { min = $1; first = 0; next;}
      if (min > $1) min=$1; }
     END { print min }' $1 )

maxn=$( awk 'BEGIN{first=1;} 
     {if (first) { max = $1; first = 0; next;}
      if (max < $1) max=$1; }
     END { print max }' $1 )

awk '{ printf( "%.4f\n" ,( $1 - "'"$minn"'" )/("'"$maxn"'" - "'"$minn"'") ); }' $1