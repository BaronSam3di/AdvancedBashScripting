#!/bin/bash
#

echo ' 
Whats wrong with this script...?

--------------------------------------------------------------------------

#!/bin/bash
#
#Ask a user what directory they want to activcate and next show a list of files in that directory

echo What direcory do you want tto activate?
read DIR
cd $DIR

for ir in *
do 
    echo found file $i
    echo Do you want to see it?
    read
    cat $i
done
--------------------------------------------------------------------------
'
echo '
    press enter to continue
'
read

echo ' 

Some improvements

- there is no test to see if $DIR exists
- there is no yes/no functionality in the loop
- there is no check on $i incase it is not a text file. Then we tell the user it cannot be opened

'