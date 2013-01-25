#!/bin/sh
rm -rf ./index

mkdir ./index

for x in {a..z}
do

find . -name "$x*" -type f | awk -F "/" '$NF ' >> "1,$x"
find . -name "$x*" -type f | awk -F "/" '{print $NF}' >> "2,$x"
paste "2,$x" "1,$x"  > ./index/$x
rm "2,$x" "1,$x"
done


##awk -F "/" '{ print $NF }' < temp3.txt | sed 's/^/echo /' temp3.txt


for x in {0..9}
do

find . -name "$x*" -type f | awk -F "/" '$NF ' >> "1num"
find . -name "$x*" -type f | awk -F "/" '{print $NF}' >> "2num"
paste "2num" "1num"  > ./index/num
rm "2num" "1num"
done
