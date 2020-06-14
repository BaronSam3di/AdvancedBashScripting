#!/bin/bash
#
# Examples of useing arrays

array=(one two three four [5]=five) 

echo "Array size: ${#array[*]}" # This will count (#) all (*) the items  in the array 

echo "Array items: "
for item in ${array[*]}         # Goes through all the values that are in the array and prints them
    do
        printf "    %s\n" $item
    done
    
echo "Array items and indexes"
for index in ${!array[*]}       # Goes through all the index of the values in the array and prints them out
    do
        printf "    %d\n" $index
    done
    
echo "Array items and indexes:"
for index in ${!array[*]}
    do
        printf "%4d: %s\n" $index ${array[$index]}  
    done