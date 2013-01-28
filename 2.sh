echo "$1"

echo "Please enter your query"
read fnd

# echo "$fnd"

fnd=$(echo "$fnd" | sed -e s/\'//g ) #removing single quotes	
fnd=$(echo "$fnd" | sed 's/+/?/') #changing + to ?

#echo "$fnd"
#find . -name "$fnd" -type f > search

for x in {a..z}
do
if grep -qs "a+c*" ./index/$x
then
   echo "here,$x" 
fi
done
