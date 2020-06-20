#!/bin/bash
#
# Advanced sed 

function moveon () {
    echo '
    Press Enter to move on'
    read
    clear
}

function findout () {
    echo 'Press Enter to find out'
    read
    clear
}

function countdown(){
COUNTER=7
while [[ $COUNTER -gt 0 ]]  
do 
    sleep 1
    echo $COUNTER seconds 
	COUNTER=$((COUNTER - 1))
done
}

echo '
The sed command 

sed s/abc/(abc)/ myfile

will swap in my file

abc for (abc)'
moveon

echo ' 
What do you think this command will do?

echo "123 abc" | sed "'"s/[0-9]*/& & &/"'" 

'
findout

echo '
echo "123 abc" | sed "'"s/[0-9]*/& & &/"'" 
'
echo "123 abc" | sed 's/[0-9]*/& & &/'
echo ' 
It will make a sed substitution with 3 copies of the string 123
'
moveon
echo '
----- Extended Regular expressions combined with sed -----

The plus sign (+) is an extended Regex.
'
moveon
echo '
In sed , you need to use the -r tack to show that your are useng extended regular expression. 
'
