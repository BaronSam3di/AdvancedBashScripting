#!/bin/bash
#
# Script that allows you to greet someone
# Usage: ./ hello [name]

echo       # Blank line

echo "Hello $1, how are you today?"
echo "\$* gives $*"         # one way to refer to all the args provided 
echo "\$# gives $#"         # a counter to show the amount of args
echo "\$@ gives $@"         # another way to refer to all the args provided
echo "\$0 gives $0"         # $0 is the name of the file

echo                        # Blank line

# trying to show every single argument on a seperated line
echo showing the interepretation of \$*
for item in "$*"           # processing every element that is found in dollar star
do
    echo $item              # $* will print all on the same line
done

echo                        # Blank line


echo showing the interepretation of \$@
for item in "$@" # processing every element that is found in dollar star
do
    echo $item              # $@ will print all on the different lines
done
exit 0