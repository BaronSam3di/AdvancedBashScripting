#!/bin/bash
#
# Patternematching exersise

INPUTSTRING=rababarabarabarara
echo
echo INPUTSTRING is $INPUTSTRING
echo
echo 'From the left to the right, this pattern ##*ba will match the last/longest pattern that matches ba' 
echo 'the result of ##*ba is     >>>>>    ' ${INPUTSTRING##*ba}
echo
echo 'From the left to the right, this pattern #*ba will match the first/shortest pattern that matches ba'
echo 'the result of #*ba is     >>>>>     ' ${INPUTSTRING#*ba} 
echo
echo 'From the right to the left, the pattern %%ba will match the last/longest pattern that matches ba'
echo 'the result of %%ba* is     >>>>>     ' ${INPUTSTRING%%ba*}
echo
echo 'From the right to the left, the pattern %ba will match the first/shortest pattern that matches ba'
echo 'the result of %ba* is     >>>>>     ' ${INPUTSTRING%ba*}
echo