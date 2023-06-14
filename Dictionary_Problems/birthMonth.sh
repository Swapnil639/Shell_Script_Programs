 #!/bin/bash

declare -A Month

#Variables
count=0;
status=0;
read -p "Enter Year : " year
if(($year==1992 || $year==1993))
then
        while [ $count -le 50 ]
        do
                num=$((RANDOM%12+1))
                echo $num
                Month[$num]=$(("${Month[$num]}" + 1))
                ((count++))
        done
else
        echo "Invalid Year"
fi

#Printing no of person count in particular month
for (( i=1; i<$((${#Month[@]}+1)); i++ ))
do
        echo "Month: $i Count: ${Month[$i]}"
done
