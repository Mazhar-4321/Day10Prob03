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

declare -A multiCoinDictionary
multiCoinDictionary["HT"]=0
multiCoinDictionary["HH"]=0
multiCoinDictionary["TH"]=0
multiCoinDictionary["TT"]=0
i=0
while [[ $i -le 10 ]]
do
toss1=$((RANDOM%2))
toss2=$((RANDOM%2))
if [[ $toss1 -eq 1 && $toss2 -eq 1 ]]
then
value=${multiCoinDictionary["HH"]}
value=$((value+1))
multiCoinDictionary["HH"]=$value
fi
if [[ $toss1 -eq 1 && $toss2 -eq 0 ]]
then
value=${multiCoinDictionary["HT"]}
value=$((value+1))
multiCoinDictionary["HT"]=$value
fi
if [[ $toss1 -eq 0 && $toss2 -eq 1 ]]
then
value=${multiCoinDictionary["TH"]}
value=$((value+1))
multiCoinDictionary["TH"]=$value
fi
if [[ $toss1 -eq 0 && $toss2 -eq 0 ]]
then
value=${multiCoinDictionary["TT"]}
value=$((value+1))
multiCoinDictionary["TT"]=$value
fi
i=$((i+1))
done
value1=${multiCoinDictionary["HH"]}
value2=${multiCoinDictionary["HT"]}
value3=${multiCoinDictionary["TH"]}
value4=${multiCoinDictionary["TT"]}
percentageValue1=`echo $value1 | awk '{printf "%.2 f",$1/10*100}'`
multiCoinDictionary["HH"]=$percentageValue1
percentageValue2=`echo $value2 | awk '{printf "%.2 f",$1/10*100}'`
multiCoinDictionary["HT"]=$percentageValue2
percentageValue3=`echo $value3 | awk '{printf "%.2 f",$1/10*100}'`
multiCoinDictionary["TH"]=$percentageValue3
percentageValue4=`echo $value4 | awk '{printf "%.2 f",$1/10*100}'`
multiCoinDictionary["HT"]=$percentageValue4
