#!/bin/bash
#
# Using awk

function moveon () {
    echo '

Press Enter to move on'
    read
    clear
}

function findout () {
    echo '
Press Enter to find out'
    read
    clear
}

function pause(){
    sleep 2
}

echo '
Like sed, awk is a very rich language'
pause

echo '
In scripts you will appriciate it as an alternative to "cut" to filter 
information from text files based on regular expression-based patterns'
pause
moveon

echo '
The basic usage of awk is 

awk "'"/search pattern/"'" {Actions} file
'
pause

echo '
IN the command 

awk -F : "'"{print \$4}"'" /etc/passwd '
pause
echo ' 
-F is the feild sperator, so in this case it will split the string at the (:) colon character.
'
moveon

echo '
IN the command 

awk -F : "'" /user/ {print \$4}"'" /etc/passwd '
pause
echo ' 
"/user/" will be the search pattern, therfore ... '
pause

echo ' 
awk -F : "'" /user/ {print \$4}"'" /etc/passwd  will be looking for the search pattern "user" and if it finds it print
the 4th coloum of the string
'
pause
moveon

echo '
For this command 

awk -F : "'" {print \$1\$NF}"'" /etc/passwd         (\$NF is the last field)'
pause
echo '
we use the \$NF as its useful when you dont know how many columns there will be'
pause
moveon

echo '
When working wiith numeric values

awk -F : "'" \$3 > 500}"'" /etc/passwd         '
pause
echo '
We will only get terms split by the colon (:), from the 3rd column, 

that are greater than ...'
pause
echo ' ...thats right. 500'
pause

echo '
You can get awk to print out a header withthe BEGIN tag '
pause
echo ' ... and a footer with the END tag. Like this...
'
pause
echo '

'
awk -F : 'BEGIN { printf " looking for the word you kippling...\n}

{print $1, $NF}
END { printf " ...Thats all folks!}' passwd

echo Thats the end of this section