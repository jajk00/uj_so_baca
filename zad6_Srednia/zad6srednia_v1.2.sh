#Jakub Kozub
#!/bin/bash
declare -a L
#I=1
N=0
while read
do
	#read -d '\n'
	#read -e #readline
	if [ -n "${REPLY}" ]
	then
		#echo ${REPLY}
		(( S+=${REPLY} ))
		L[$N]=${REPLY}
		(( N++ ))	
	fi
done
(( A=$S/$N ))
(( M=$N-1 ))
W=0
for I in $(seq 0 $M)
do
	#echo ${L[$I]}
	(( B=${L[$I]}-$A ))
	(( W+=$B*$B ))
done
(( W=$W/$N ))
echo $A
echo $W
