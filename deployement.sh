#!/bin/sh

# Author : Zara Ali
# Copyright (c) Tutorialspoint.com
# Script follows here:

#echo "What is your name?"
#read PERSON
#echo "Hello, $PERSON"
#declare -a Array50
#Array50=( "key1" "key2" "key3" "key4" "key5" "key6" "key7" "key8" "key9" "key10" )

#declare -a Array1
for filename in /root/.jenkins/workspace/Database_automation_testing/*.sql; do
#   echo  "$(basename "$filename")"
#    Array50=$(basename "$filename")
#    Array1=("${Arry50[@]}" "$filename")
 Array1=("${Array1[@]}" $(basename "$filename"))
#Array1=("${Array1[@]}" "$filename")

done
#echo ${Array1[@]}
#echo ${Array50[@]}
#declare -p arr

#read -e -p "Enter your search string: " name
#echo "name: [$name]"
#declare -a arr
#arr=( $(awk /"$name"'/{print NR}' x ) )

#echo ${arr[0]}
#echo ${arr[*]}

#for filename in list  do
#   echo "$filename"

#done


#list="11 22 33"
#x="batch_06102018.txt"

#for item in $list
#do
#    if [ "$x" == "$item" ]; then
#        echo "In the list"
#        exit
#    fi
#done

#patt=$1
#if [ -z "$patt" ] ; then echo "need an argument" ; exit 1 ; fi
#A=( $(awk '/^\[/ {p = 0};
#           /^\['"$patt"'\]/ {p=1; next}
#           p && !/^ *$/ ;' < servers )  )

#for x in "${A[@]}" ; do 
#    echo doing something with "$x" 
#done



#Array1=( "key1" "key2" "key3" "key4" "key5" "key6" "key7" "key8" "key9" "key10" )
#Array2=( "key1" "key2" "key3" "key4" "key5" "key6" )
Array2=($(mysql -udeveloper -padmin@123 -c -h 192.168.1.122 -Bse "use deployement_status; call deployement_status.database_deployement_version_get_all('Exicom','Xfusion_Platform');"))
echo ${Array2[@]}




Array3=()
for i in "${Array1[@]}"; do
    skip=
    for j in "${Array2[@]}"; do
        [[ $i == $j ]] && { skip=1; break; }
    done
    [[ -n $skip ]] || Array3+=("$i")
done
declare -a  Array3

echo "Array 1 " ${Array1[@]}
echo "Array 2 " ${Array2[@]}
echo "Array 3(diffrence) " ${Array3[@]}


echo "Diffrence in both array"

## now loop through the above array
for i in "${Array3[@]}"
do
   echo "$i"
   # or do whatever with individual element of the array
done


#runing code
#results=($(mysql -udeveloper -padmin@123 -c -h 192.168.1.122 -Bse "show databases;"))
#cnt=${#results[@]}                                                           
#echo $cnt
#for (( i=0 ; i<cnt ; i++ ))                                                    
#do echo "Record No. $i: ${results[$i]}"                                      
#done

echo "print diffrent version "



for i in "${Array3[@]}"
do
   echo  "mysql -udeveloper -padmin@123 -c -h 192.168.1.122 -Bse $i" 
   mysql -udeveloper -padmin@123 -c -h 192.168.1.122 -e "source $i;"
   mysql -udeveloper -padmin@123 -c -h 192.168.1.122 -e "use deployement_status; call database_deployement_version_insert('Exicom','Xfusion_Platform','$i');"
   # or do whatever with individual element of the array
done















