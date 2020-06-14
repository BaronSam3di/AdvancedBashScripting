#!/bin/bash
#
# Kiesdir: Demonstrates making menus with select

echo 'choose a directoy: '
select directory in /bin /usr /etc

do
        # only continue if user has selected something
        if [ -n "$directory" ]
            then
                DIR=$directory
                echo you have selected $DIR
                export DIR
                break
            else
                echo invalid choice
        fi
done