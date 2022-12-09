#!/bin/bash
DIR1=$(ls "$1")
DIR2=$(ls "$2")

for i in $DIR1;
do
    chmod 777 $1/$i

    for j in $DIR2;
    do 
        chmod 777 $2/$j

        if [[ $i ==  $j ]]; then
            echo "$1$i == $2$j"
            diff $1/$i $2/$j
            
        fi
    done
done
