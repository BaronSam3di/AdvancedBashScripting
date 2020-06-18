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

echo ' 
---------------------------------------------------------------
------------------ Different Testing methods ------------------

/usr/bin/test is considered legacy and has been deprericated so you should not use it.

Instead use the construction with square brakets like these [] syntax. 
For example [ -x $1 ] is what you would use to test and check if $1 is empty or not.
This style is built in so it will work on many shells.
'

PressEnterToMoveOn

echo '

The double square brackets approach to testing is a newer bash testing method.
It looks like this >>   [[...]]

It has some more features than the older bracket version but has some incompatibilities with it too.
It will also need a space on either side of the command within tthe brackets like this ...

[[ a > b ]]
'
PressEnterToMoveOn

echo '
The command will do what? 

[[ a > b ]] && echo a comes before b

'
PressEnterToFindOut

echo '
Will print >> a comes before b if a is greter than b
'
PressEnterToMoveOn

echo '

You can also use logical AND within the the test, which is new. Such as this

[[ -n $VAR && -f $VAR ]] && echo $VAR is a file

'
PressEnterToFindOut

echo 'This command will print the var is a file if it has a value (-n) and is a file (-f)'

PressEnterToMoveOn

echo '

You can also use logical and withiin the the test, which is new. Such as this

[[ -b $VAR && -c $VAR ]] && echo $VAR is a device

'
PressEnterToFindOut

echo 'This command will print the var is a block device (-b), or a character (-c) '

PressEnterToMoveOn

echo '

You can check Regex. Not somethiing that can not be done with simple sqaure brackets. Such as this command

[[ $NAME = [a-z]* ]] && echo NAME starts with a letter: $NAME

'
PressEnterToFindOut

echo 'This command will print id the name starts with a letter and then print the name.'

PressEnterToMoveOn

echo '

Another Regex below. Such as this command

[[ $(date) =-^Fri\...\13]] && echo "Its Friday the 13th!"
'
PressEnterToFindOut

echo' This command will check if the result from the command substition would start with Fri and end with 13'

PressEnterToMoveOn

echo '

If you NEED to be compatible use single brackets

If DO NOT need to be compatible use the double brackets instead

Press enter to end the lesson
'
read