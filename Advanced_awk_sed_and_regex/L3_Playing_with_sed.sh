#!/bin/bash
#
# An example of playing with sed on If by Rudyard Kippling

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

echo 'In 7 seconds the poem If by Rudyard Kippling will appear below

Have a read of it becasue its a good poem and we are going to turn it into nonsense verse'
countdown
echo
cat Kippling.txt
moveon

cp Kippling.txt NonsenseVerse.txt
echo 'Lets swap the word "and" for the word "BUT"
'
moveon
cat Kippling.txt | sed -i -e s/and/BUT/g NonsenseVerse.txt
echo
cat NonsenseVerse.txt

moveon

echo 'Now lets swap the word "you" for the word "CHICKEN"
'
moveon
cat NonsenseVerse.txt | sed -i -e s/you/CHICKEN/g NonsenseVerse.txt
echo
cat NonsenseVerse.txt
moveon



echo 'Now lets swap the word "If" for the word "MAYBE"
'
moveon
cat NonsenseVerse.txt | sed -i -e s/If/MAYBE/g NonsenseVerse.txt
echo
cat NonsenseVerse.txt
moveon


echo Thast the end of this stage

rm -rf NonsenseVerse.txt
rm -rf NonsenseVerse.txt-e

