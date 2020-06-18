#!/bin/bash
#
# test whether two parameters weren't given (special variable $#)
# we exit wiht an error if the arnt't

if [[ $# != 2 ]]; then
    # redirect output to error output
    echo "Usage: $0 oldestension newextension"
    # return with a non-zero status (indicating error)
    exit 1
fi

for file in *.$1; do
    # back ticks start commands, returning result 
    # this once echos filename, and replaces old exstension
    # with the new one
    newname=`echo $file | sed "s/$1$/$2/"`
    
    # actually rename the file
    echo "Renaming $file to $newname"
    mv "$file" "$newname"
done
