#Jakub Kozub
#!/bin/bash
N=0
while read L
do
    if [ $N -gt 0 ]
    then
    	K=$(echo $L | cut -d ' ' -f9)
    	echo -n $K
    	I=0
    	while [ $I -lt 10 ]
    	do
    		A[$I]=${L:$I:1}
    		((I++))
    	done
    	W=0
    	G=0
    	O=0
    	if [ ${A[0]} = 'd' ]; then echo -ne "/ "; fi
    	if [ ${A[1]} = 'r' ]; then ((W+=4)); fi
    	if [ ${A[2]} = 'w' ]; then ((W+=2)); fi
    	if [ ${A[3]} = 'x' ] 
    	then 
    	    ((W++))
			if [ ${A[0]} != 'd' ]
			then
				echo -ne "* "
			fi
		else
		    echo -ne " "
    	fi
    	if [ ${A[4]} = 'r' ]; then ((G+=4)); fi
    	if [ ${A[5]} = 'w' ]; then ((G+=2)); fi
    	if [ ${A[6]} = 'x' ]; then ((G++)); fi
    	if [ ${A[7]} = 'r' ]; then ((O+=4)); fi
    	if [ ${A[8]} = 'w' ]; then ((O+=2)); fi
    	if [ ${A[9]} = 'x' ]; then ((O++)); fi
    	echo -ne "$W$G$O"
    	echo -ne "\n"
	fi
	((N++))
done