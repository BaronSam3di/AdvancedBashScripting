#!/bin/bash
#
#
# help declare
echo
echo '
declare -r var=1            # (readonly)
declare -i var=1            # (number)
declare -a var              # (array)
declare -f function_name    # (function)
declare -x var=1            # (export)
'
declare -i number
number=10/5
echo $number should be the result of 10/5


declare -r aReadOnlyVariable=12
echo $aReadOnlyVariable
echo trying to write to aReadOnlyVariable
aReadOnlyVariable=13
echo

