#Jakub Kozub
#!/bin/bash
S=0
N=0
while read L
do
    if [ $N -ne 0 ]
    then
        R=0
        for J in $(seq 1 $N)
        do
            if [ $L = ${W[J]} ]
            then
                ((C[J]++))
                R=1
            fi
        done
    fi
    if [[ $R -eq 0 || $N -eq 0 ]]
    then
        ((N++))
        W[N]=$L
        C[N]=1
    fi
    ((S++))
done
M=$S
for I in $(seq 1 $N)
do
    if [[ ${C[I]} -lt $M || $M -eq $S ]]
    then 
        X=$I
        M=${C[$I]}
    fi
done
echo "${W[X]}" "${C[X]}"