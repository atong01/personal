#!/usr/bin/sh
#
# script checking CPU and memory utilization by user
#
#

var="";

while getopts "hcm" OPTION; do
case $OPTION in

c)
     var="-k 2 -r"
     ;;

m)
     var="-k 3 -r"
     ;;

h)
     echo "Usage:"
     echo "checkcpumem.sh -h "
     echo "checkcpumem.sh -c "
     echo "checkcpumem.sh -m "
     echo ""
     echo " -h show this help"
     echo " -c order by CPU usage, default by username"
     echo " -m order by memory usage, default by username"
     exit 0
     ;;

esac
done

# first line of tab
echo ""
echo -e "user\t\tCPU\tMEM"

# main loop
users=$(ps axo user,user | grep -v USER | sort | uniq | sed 's/  */,/')
for user in $users;
do
     uid=$(echo "$user" | sed 's/,/\t/' | awk '{print $2}')
     uid_short=$(echo "$user" | sed 's/,/\t/' | awk '{print $1}' | sed 's/\+$//')
     top -b -n 1 -u $uid | grep $uid_short | awk -v var="$uid_short" '{ sumC += $7; }; { sumM += $8; } END { print var "\t\t" sumC "\t" sumM; }';
done | sort -n `echo $var`
