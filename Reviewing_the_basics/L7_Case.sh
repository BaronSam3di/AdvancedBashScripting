#!/bin/bash
#

echo how are you?
read USERISFEELING

USERISFEELING=`echo $USERISFEELING | tr a-z A-Z`    # tr will transelate all lowercaser to upper case because...

[ -z $USERISFEELING ] && exit 1                     # exit 12 is just something went wrong

case $USERISFEELING in                              #... case is case sensitive
    GOOD)
    echo nice!
    ;;                                              # ;; closes each option
    BAD)
    echo Keep your pecker up!
    ;;
    *)
    echo I don\'t understand your answer
    ;;
esac