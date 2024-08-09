#Jakub Kozub
#!/bin/bash
read N
echo 0
if [ $N -ne 1 ]
then
	echo 1
	if [ $N -ne 2 ]
	then
		A=0
		B=1
		for I in $(seq 3 $N)
		do
			T=$B
			B=$((A+B))
			A=$T
			echo $B
		done
	fi
fi