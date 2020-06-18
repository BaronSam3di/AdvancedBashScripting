#!/bin/bash
#
[ -s $1 ] && echo " quick test if file is not zero in size"    

#prompt and then read from the keyboard
echo "Enter a letter"
read var1

if [[ $var1 == 'a' ]]; then 
    echo "a selected"
else    
    echo "a not slelected"
fi

# prompt for a string and read it in
echo "Enter a string"
read var2

# Check if it is hello; or has bye at the end
case $var2 in 
    [hH][eE][lL][lL][oO])
        echo "hello found";;
    *[[bB][yY][eE])
        echo "Bye found" ;;
    *)
        echo "Nothing found" ;;
esac

# Prompt for a number and read it in
echo "Please enter a number"
read "var3"

# Print the reange that the number appears in
if [[ $var3 -ge 1 && $var3 -le 9 ]]; then
    echo " 1 to 9"
elif [[ $var3 -ge 10 && $var3 -le 19 ]]; then
    echo " 10 to 19"
elif [[ $var3 -gt 19 || $var3 = 0 ]]; then
    echo "Greater than 19 or equal to zero"    
else 
    echo "other range"
fi