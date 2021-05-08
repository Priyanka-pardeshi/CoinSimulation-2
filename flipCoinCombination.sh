#! /bin/bash -x

toss=$((1+RANDOM%2))
if (($toss==1))
then
        echo "Its Head"
        elif (($toss==2))
        then
                echo "Its Tail"
        else
                echo "invalid "
fi
