#!/bin/bash
#
# 

function moveon () {
    echo 'Press Enter to move on'
    read
    clear
}

echo '

1/12 -----------Regular expressions------------- 

- Regular expressions are search patterns that can be used by some utilities (grep and other text processing tools; awk,sed)

- Regular expressions are NOT the sasme as shell wildcards.

- When using regular expressions, put them between strong quotes so that the shell will not interpret them.

- Be aware that there is a difference between regular expressions and Extended Regular expressions. These are more advanced regexs
'
moveon


echo '

2/12 -----------    Regular expression examples    -------------  

^text                                   Line starts with test
'
moveon
echo '

3/12

text$                                    Line ends with text
'
moveon 
echo '
4/12

.                   Wildcard (matchest and single character)
'
moveon
echo '
5/12

[a,b,c],[a-c]                            Matches a, b, or c
'
moveon

echo '
6/12

*           Matches 0 to an infinite number of the previous charachter
            When you need something or nothing.
'
moveon
echo '
7/12

\{2\}                 Matches exactly 2 of the previous charachter

'
moveon

echo '
8/12

\{1,3\}             Match a min of 1 and a max of 3 of the previous charachter
'
moveon

echo '
9/12

colou?r             Match 0 or 1 of the previous character 
                    (so in this case the lettter u is optional 
                    for American or English spelling of colour)

'
moveon

echo ' 
10/12              Charachter Classes in Regular expression

[:alpha:]            //     Letters     
[:alnum:]            //     Alphanumeric        ( a-z0-9)
[:upper:]            //     UPpeR CASe leTTERS
[:lower:]            //     lower case letters
[:digit:]            //     Any digits          ( 54325432)
[:punct:]            //     Punctioation        ( .;/.,)
[:space:]            //     Spaces              (     ) 

'
moveon

echo '
11/12
What do you think will happen when we run this line ..?
 
echo hello | tr [:lower:] [:upper:] 
 
press enter to find out
'

read
echo hello | tr [:lower:] [:upper:]
echo

moveon

echo '
12/12
What do you think will happen when we run this line ..?
 
echo hello | tr [:alnum:] [:upper:] 
 
press enter to find out
'

read
echo hello | tr [:alnum:] [:upper:]
echo  
echo

echo '
        Thats the end of this lesson
'
moveon      
