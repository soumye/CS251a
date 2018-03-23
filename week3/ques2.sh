#!/bin/bash

if [ ! -f "$1" ]
then echo "file 1 doesn't exist"
		exit
fi

if [ ! -f "$2" ]
then echo "file 2 doesn't exist"
		exit
fi

if [ ! -f "$3" ]
then echo "file 3 doesn't exist"
		exit
fi

IFS="-"
A=($( awk -F "," '{ printf("%d-",$1); }' $1 ))
B=($( awk -F "," '{ printf("%s-",$2); }' $1 ))
num=$(cat $1 | wc -l)
E=($( awk -F "," '{ printf("%d-",$1); }' $3 ))
F=($( awk -F "," '{ printf("%d-",$2+$3); }' $3 ))
projnum=$(cat $3 | wc -l) 
C=($( awk -F "," '{ printf("%d-",$1); }' $2 ))
D=($( awk -F "," '{ printf("%d-",$2); }' $2 ))

for (( i = 0; i <= $num; i++ )); do
	j=0
	for (( ; j <= $num; j++ )); do
		
			if (( ${A[$j]} == ${D[$i]} ))
			then 
				break
			fi;
	done
	k=0
	for (( ; k <= $projnum; k++ )); do
		
			if (( ${E[$k]} == ${C[$i]} ))
			then 
				break
			fi;
	done
	 echo ${A[$j]}","${B[$j]}","${F[$k]}
done



# awk -F "," -v n="$num" -v m="$projnum" -v a="${A[*]}" -v b="${B[*]}" -v c="${C[*]}" -v d="${D[*]}" 'BEGIN{
# 	split(a, name, /\n/); split(a, rollnum, /\n/); split(a, proj, /\n/); split(a, marks, /\n/);
# } {	
# 					printf("hello : ");j=0;i=0;
# 					for(;i<n;i++)
# 					{
# 						# if(rollnum[$i]==$2)break;
# 						printf("%d\n",rollnum[i]);
# 					}
# 					# for(;j<m;++j)
# 					# {
# 					# 	if(proj[$j]==$1)break;
# 					# }
# 					# printf("%d,%d ",i,j);
# 					# printf("%d,%s,%d\n",rollnum[i],name[i],marks[j]);			

# 	}' fil2.txt

