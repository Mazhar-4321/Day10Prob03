echo "Flip Coin Simulation"
toss=$((RANDOM%2))
if [[ $toss -eq 1 ]]
then
echo "heads"
else
echo "tails"
fi
