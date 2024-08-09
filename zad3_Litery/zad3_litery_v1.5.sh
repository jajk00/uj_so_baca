#Jakub Kozub
#!/bin/bash
read ARG
if [ ${#ARG} -gt 1 ]
then
    X=${ARG:0:1}
else
    X=$ARG
    Y=${X~~}
fi
if [ -n "${ARG}" ]
then
    awk '{gsub("[^'$X''$Y']",""); print length($0);}'
fi
while read
do
	awk '{gsub("[^'$X''$Y']",""); print length($0);}'
done
