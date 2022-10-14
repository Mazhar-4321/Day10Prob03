echo "Flip Coin Simulation"
declare -A dictionary
dictionary[1]=0
dictionary[0]=0
i=0
while [[ $i -le 10 ]]
do
toss=$((RANDOM%2))
if [[ $toss -eq 1 ]]
then
value=${dictionary[1]}
value=$((value+1))
dictionary[1]=$value
echo "heads"
else
echo "tails"
value=${dictionary[0]}
value=$((value+1))
dictionary[1]=$value
fi

i=$((i+1))
done
value1=${dictionary[0]}
value2=${dictionary[1]}
percentageValue=`echo $value1 | awk '{printf "%.2 f",$1/10*100}'`
dictionary[0]=$percentageValue
percentageValue=`echo $value2 | awk '{printf "%.2 f",$1/10*100}'`
dictionary[1]=$percentageValue
