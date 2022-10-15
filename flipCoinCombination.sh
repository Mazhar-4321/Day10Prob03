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
##Triplet Dictionary
declare -A tripletDictionary
tripletDictionary["HHH"]=0
tripletDictionary["HHT"]=0
tripletDictionary["HTH"]=0
tripletDictionary["HTT"]=0
tripletDictionary["THH"]=0
tripletDictionary["THT"]=0
tripletDictionary["TTH"]=0
tripletDictionary["TTT"]=0
i=0
while [[ $i -le 10 ]]
do
toss1=$((RANDOM%2))
toss2=$((RANDOM%2))
toss3=$((RANDOM%2))
if [[ $toss1 -eq 1 && $toss2 -eq 1 && $toss3 -eq 1 ]]
then
value=${tripletDictionary["HHH"]}
value=$((value+1))
tripletDictionary["HHH"]=$value
fi
##
if [[ $toss1 -eq 1 && $toss2 -eq 1 && $toss3 -eq 0 ]]
then
value=${tripletDictionary["HHT"]}
value=$((value+1))
tripletDictionary["HHT"]=$value
fi
##
if [[ $toss1 -eq 1 && $toss2 -eq 0 && $toss3 -eq 1 ]]
then
value=${tripletDictionary["HTH"]}
value=$((value+1))
tripletDictionary["HTH"]=$value
fi
##
if [[ $toss1 -eq 1 && $toss2 -eq 0 && $toss3 -eq 0 ]]
then
value=${tripletDictionary["HTT"]}
value=$((value+1))
tripletDictionary["HTT"]=$value
fi
##
if [[ $toss1 -eq 0 && $toss2 -eq 1 && $toss3 -eq 1 ]]
then
value=${tripletDictionary["THH"]}
value=$((value+1))
tripletDictionary["THH"]=$value
fi
##
if [[ $toss1 -eq 0 && $toss2 -eq 1 && $toss3 -eq 0 ]]
then
value=${tripletDictionary["THT"]}
value=$((value+1))
tripletDictionary["THT"]=$value
fi
##
if [[ $toss1 -eq 0 && $toss2 -eq 0 && $toss3 -eq 1 ]]
then
value=${tripletDictionary["TTH"]}
value=$((value+1))
tripletDictionary["TTH"]=$value
fi
##
if [[ $toss1 -eq 0 && $toss2 -eq 0 && $toss3 -eq 0 ]]
then
value=${tripletDictionary["TTT"]}
value=$((value+1))
tripletDictionary["TTT"]=$value
fi

i=$((i+1))
done
value1=${tripletDictionary["HHH"]}
value2=${tripletDictionary["HHT"]}
value3=${tripletDictionary["HTH"]}
value4=${tripletDictionary["HTT"]}
value5=${tripletDictionary["THH"]}
value6=${tripletDictionary["THT"]}
value7=${tripletDictionary["TTH"]}
value8=${tripletDictionary["TTT"]}
percentageValue1=`echo $value1 | awk '{printf "%.2 f",$1/10*100}'`
tripletDictionary["HHH"]=$percentageValue1
percentageValue2=`echo $value2 | awk '{printf "%.2 f",$1/10*100}'`
tripletDictionary["HHT"]=$percentageValue2
percentageValue3=`echo $value3 | awk '{printf "%.2 f",$1/10*100}'`
tripletDictionary["HTH"]=$percentageValue3
percentageValue4=`echo $value4 | awk '{printf "%.2 f",$1/10*100}'`
tripletDictionary["HTT"]=$percentageValue4
percentageValue5=`echo $value5 | awk '{printf "%.2 f",$1/10*100}'`
tripletDictionary["THH"]=$percentageValue5
percentageValue6=`echo $value6 | awk '{printf "%.2 f",$1/10*100}'`
tripletDictionary["THT"]=$percentageValue6
percentageValue7=`echo $value7 | awk '{printf "%.2 f",$1/10*100}'`
tripletDictionary["TTH"]=$percentageValue7
percentageValue8=`echo $value8 | awk '{printf "%.2 f",$1/10*100}'`
tripletDictionary["TTT"]=$percentageValue8
