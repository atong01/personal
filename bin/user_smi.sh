#!/bin/bash
export SMI=$(nvidia-smi)
head -n 15 <(echo "$SMI")
i=16
n=$(echo "$SMI" | wc -l)
while [[ "$i" -lt "$n" ]]; do
	LINE=$(echo "$SMI" | tail -n+$i | head -n 1)
	PID=$(echo $LINE | sed 's/  */\t/g' | cut -f 3)
	USER_ID=$(ps aux | sed "s/\([^ ]*\) *\([0-9]*\) .*/\1\t\2/" | grep $PID | grep -v "grep $PID" | cut -f 1)
	echo "$LINE $USER_ID" 
	i=$(($i+1))
done
echo "$SMI" | tail -n 1
