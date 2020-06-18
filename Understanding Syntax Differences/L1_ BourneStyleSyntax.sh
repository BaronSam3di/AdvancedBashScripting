#!/bin/bash
#
# From the advanced Bash-scripting Guide
# Bourne Style Syntax

LIMIT=19    # Upper Limit

echo 
echo "Printing Numbers 1 through 20 (but not 3 and 11)."

a=0

while [ $a -le "$LIMIT" ]
do
    a=$(($a+1))
    
    if [ "$a" -eq 3 ] || [ "$a" -eq 11 ] # excludes 3 and 11.
    then
        continue    # skip rest of this particular loop iteration. 
    fi
    
    echo -n "$a "   # This will not execute for 3 and 11.
done

# Exersie: 
# Why does the loop print upto 20?

echo; echo
echo "Printing Numbers 1 through 20 but something happens after 2."

###################################################################

# Same loop, but substituting ' break' for 'continue'.
a=0

while [ $a -le "$LIMIT" ]
do
    a=$(($a+1))
    
    if [ "$a" -gt 2 ] 
    then
        break    # skip entire rest of the loop
    fi
    
    echo -n "$a "  
done

# Exersie: 
# Why does the loop print upto 20?

echo; echo; echo
exit 0