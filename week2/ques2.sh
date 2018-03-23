#!/bin/bash
#Soumye Singhal 
#150728
echo "Number of Students"
read n
echo "Number of TA's"
read m
echo "Number of days"
read d
echo "File name"
read fil
echo "Starting Time"
read t
echo "Time per student"
read g
#Shuffle the students and store into array
students=($(seq $n | shuf ))
#Shuffle TA's and store into array
tas=($(seq $m | shuf))
#Read weights from file into array
weight=($(cat $fil)) 
w="$(echo "$n / $m" | bc )"

taonday=()
i=0
p=0
while [ $i -lt $d ]
do
	taonday[$i]=$(echo "${weight[$i]}*$m/100" | bc)
	((p+=${taonday[$i]}))
	((i++))
done

mres=$(( $m - $p ))

i=0
while [ $i -lt $mres ]
do
	((taonday[$i]+=1))
	((i++))
done

studonday=()
i=0
p=0
while [ $i -lt $d ]
do
	studonday[$i]=$(echo "${taonday[$i]}*$w" | bc)
	((p+=${studonday[$i]}))
	((i++))
done

nres=$(( $n - $p ))

i=0
studta=()
while [ $i -lt $m ]
do
	studta[$i]=$w
	((i++))
done

i=0
while [ $i -lt $nres ]	
do	
	j=${tas[i]}
	((studta[$j]++))
	((i++))
done
#Printing Day wise students	
i=0
ni=0
mi=0
while [ $i -lt $d ]
do
		echo "Students for day $(($i + 1))"
		j=0	
		while [ $j -lt ${taonday[$i]} ]
		do		
			for (( k = 0; k < ${studta[$mi]}; k++ )); do
				echo "${students[$ni]}"				
				((ni++))
			done
			((mi++))
			((j++))
		done
		((i++))
done
 #Printing Day wise mappings
i=0
ni=0
mi=0
while [ $i -lt $d ]
do
		echo "mapping for day $(($i + 1))"
		j=0
		#Iterating through no of tas on ith day		
		while [ $j -lt ${taonday[$i]} ]
		do
			#now while loop for mi^th TA
			timeds=$t
			for (( k = 0; k < ${studta[$mi]}; k++ )); do
				echo " ${tas[$mi]}  ${students[$ni]} $timeds"
				timeds=$(date -d "$timeds $g minutes" | grep -o ..:..)
				((ni++))
			done
			((mi++))
			((j++))
		done
		((i++))
done



