#!/bin/bash
#
# Patternematching exersise

INPUTSTRING=rababarabarabarara
echo
echo INPUTSTRING is $INPUTSTRING
echo
echo 'the result of ##*ba is ' ${INPUTSTRING##*ba}
echo 'the result of #*ba is ' ${INPUTSTRING#*ba} 
echo 'the result of %%ba* is ' ${INPUTSTRING%%ba*}
echo 'the result of %ba* is ' ${INPUTSTRING%ba*}
echo