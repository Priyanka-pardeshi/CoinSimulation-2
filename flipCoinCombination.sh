#! /bin/bash -x
read -p "how many times wanna toss coin? " n
#declaring an arrary to save result of toss.
declare -a arr1

#declaring count variable to trass number of head and tail.
countH=0
countT=0
tossCount=0

for ((i=1; i<=n;i++))
do
        toss=$((1+RANDOM%2))
        ((tossCount++))
        if (($toss==1))
        then
                arr1[$i]="Head"
                ((countH++))
        elif (($toss==2))
        then
                arr1[i]="Tail"
                ((countT++))
        else
                echo "invalid number"
        fi
done
echo $tossCount $countH $countT

per=`echo $tossCount $countH | awk '{print $2*100/$1}'`
echo " The persentage of head  is $per %"
echo " The persentage of tail is $((100-$per))%"



