#!/bin/bash
#
# Different Testing methods

function PressEnterToMoveOn(){
    echo '---- Press enter when you are ready to move on ----'
    read
    clear
}

function PressEnterToFindOut(){
    echo '---- Press enter to find out ----'
    read
}

function divider(){
    clear
    echo '#################################################'
}
divider

echo '
    Calculations can be done in different ways for example you have the double braces way 
    such as ((1+1))
    
    lets see the command" echo $((1 + 1)) " in action
'
PressEnterToFindOut
 echo $((1 + 1))
 
 divider
 echo '
 You can also use the let command such as let x="$1 $2 $3"; echo $x
 
 This is works in all the shells but is has been depricated and is not advised.
 '
 PressEnterToMoveOn
 divider
 
 echo ' The most sophisticated and accurate way is to use the bc function.
 
 For example
 
 VAR=$(echo "scale=9; 10/3" | bc)
 
 Bash will onnly work for integers. BC ca nwork with decimals.
 scale=9 will set the numbers after the decimal place.
 
 Lets see what VAR=$(echo "scale=15; 10/3" | bc) looks like
 '
 PressEnterToFindOut
 VAR=$(echo "scale=15; 10/3" | bc)
 echo $VAR  
 PressEnterToMoveOn

 
 


