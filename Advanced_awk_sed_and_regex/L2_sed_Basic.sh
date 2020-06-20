#!/bin/bash
#
# 

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

echo ' 
1       ----------  Using Sed ------------


Sed is more than a text processing utility, it is a prgramming labnguage with many features. 
Sed was developed in the 1970s when computers were operated with text files.
'
moveon

echo '

What do you think this command does?

sed -n 5p /etc/password 
'
findout

echo
'
sed -n 5p /etc/password 

This will print the 5th line of the file , in this case the /etc/password file'

moveon

echo '

What do you think this command does?

sed -i s/oldtext/newtext/g ~/myfile '

findout

echo '

sed -i s/oldtext/newtext/g ~/myfile    

Introduce (-i) to the file listed at the end.

(s) will substitute oldtext for the newtext globally (g) in the entire file and write it. 
Otherwise it may just print it to the console.'

moveon
echo '

What do you think this command does? NOTE: "'"2d"'" is a way to present a single quoted 2d  

sed -i -e "'"2d"'" ~/myfile'

findout
echo '

sed -i -e "'"2d"'" ~/myfile

Introduce (-i) to the file the deleteion of the 2nd line (2d) from myfile.'

moveon
echo '

What do you think this command does?

sed -i -e "'"2d;20;25d"'" ~/myfile
'

findout

echo 
'
sed -i -e "'"2d;20;25d"'" ~/myfile

Introduce (-i) the edit (-e) of deleteing lines 2, 20 and 25 to myfile.
'