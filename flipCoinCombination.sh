#! /bin/bash -x
read -p "how many times wanna toss coin? " n
#declaring an arrary to save result of toss.
declare -a arr1

#declaring count variable to trace number of head and tail.
countHHH=0
countHHT=0
countHTH=0
countHTT=0
countTHH=0
countTHT=0
countTTH=0
countTTT=0
tossCount=0

for ((i=1; i<=n;i++))
do
        toss1=$((1+RANDOM%2))
        toss2=$((1+RANDOM%2))
        toss3=$((1+RANDOM%2))
        ((tossCount++))
        if (($toss1==1 & $toss2==1 & $toss3==1))
        then
                arr1[$i]="HHH"
                ((countHHH++))
        elif (($toss1==1 & $toss2==1 & $toss3==2))
        then
                arr1[$i]="HHT"
                ((countHHT++))
        elif (($toss1==1 & $toss2==2 & $toss3==1))
        then
                arr1[$i]="HTH"
                ((countHTH++))

        elif (($toss1==1 & $toss2==2 & $toss3==2))
        then
                arr1[$i]="HTT"
                ((countHTT++))
        elif (($toss1==2 & $toss2==1 & $toss3==1))
        then
                arr1[$i]="THH"
                ((countTHH++))
        elif (($toss1==2 & $toss2==1 & $toss3==2))
        then
                arr1[$i]="THT"
                ((countTHT++))
        elif (($toss1==2 & $toss2==2 & $toss3==1))
        then
                arr1[$i]="TTH"
                ((countTTH++))
        elif (($toss1==2 & $toss2==2 & $toss3==2))
        then
                arr1[$i]="TTT"
                ((countTTT++))

        fi

done
echo "total=$tossCount , HHH=$countHHH , HHT=$countHHT , HTH=$countHTH  HTT=$countHTT"
echo "THH=$countTHH THT=$countTHT TTH=$countTTH TTT=$countTTT "

HHH=`echo $tossCount $countHHH | awk '{print $2*100/$1}'`
echo "persentage of HHH is $HHH"

HHT=`echo $tossCount $countHHT | awk '{print $2*100/$1}'`
echo "persentage of HHT is $HHT"

HTH=`echo $tossCount $countHTH | awk '{print $2*100/$1}'`
echo "persentage of HTH is $HTH"

HTT=`echo $tossCount $countHTT | awk '{print $2*100/$1}'`
echo "persentage of HTT is $HTT"

THH=`echo $tossCount $countTHH | awk '{print $2*100/$1}'`
echo "persentage of THH is $THH"

THT=`echo $tossCount $countTHT | awk '{print $2*100/$1}'`
echo "persentage of THH is $THT"

TTH=`echo $tossCount $countTTH | awk '{print $2*100/$1}'`
echo "persentage of TTH is $TTH"

TTT=`echo $tossCount $countTTT | awk '{print $2*100/$1}'`
echo "persentage of TTT is $TTT"



