#! /bin/bash -x
read -p "how many times wanna toss coin? " n
#declaring an arrary to save result of toss.
declare -a arr1

#declaring count variable to trass number of head and tail.
countHH=0
countHT=0
countTH=0
countTT=0
tossCount=0

for ((i=1; i<=n;i++))
do
        toss1=$((1+RANDOM%2))
        toss2=$((1+RANDOM%2))
        ((tossCount++))
        if (($toss1==1 & $toss2==1 ))
        then
                arr1[$i]="HH"
                ((countHH++))
        elif (($toss1==1 & $toss2==2))
        then
                arr1[i]="HT"
                ((countHT++))
        elif (($toss1==2 & $toss2==1))
        then
                arr1[$i]="TH"
                ((countTH++))
        elif (($toss1==2 & $toss2==2))
        then
                arr1[$i]="TT"
                ((countTT++))
        fi
done
echo "total=$tossCount , HH=$countHH , HT=$countHT , TH=$countTH  TT=$countTT"
#persentage=`echo $tossCount $countH | awk '{print $2*100/$1}'`
HH=`echo $tossCount $countHH | awk '{print $2*100/$1}'`
echo "persentage of HH is $HH"

HT=`echo $tossCount $countHT | awk '{print $2*100/$1}'`
echo "persentage of HT is $HT"

TH=`echo $tossCount $countTH | awk '{print $2*100/$1}'`
echo "persentage of TH is $TH"

TT=`echo $tossCount $countTT | awk '{print $2*100/$1}'`
echo "persentage of TT is $TT"



