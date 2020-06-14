#!/bin/bash
#
# script that monitors availobity of a service


##### exit code reference
# 0: Sucsessful
# 1: Unsucsessful
# 3: no argument provided
# 4: service is not running
#####


# make sure that service name is provoded as an argument
if [ -z $1 ]; then
    echo A service name must be provided when starting this script
    exit 3  
else
    SERVICE=$1
fi

# run without stopping to do the monitoring task
# 1 verify that $SERVICE is running
if ps aux | grep $SERVICE | grep -v grep | grep -v ServiceMon.sh
then
    echo $SERVICE is running
else
    echo \$SERVICE could not be found as a process
    echo Make sure that \$SERVICE is running and try again
    echo 'The command ps aux | grep $SERVICE should show the service is running'    # make sure to use single quotes so the pipe doesnt get interpreted
    exit 4
fi

# monitor service
while ps aux | grep $SERVICE | grep -v grep | grep -v ServiceMon
do
    sleep 20
done

# actions if the services are failing
# assume that the service processname can be started wit hthe service command

service $SERVICE start                # this will start the service
logger ServiceMon: $SERVICE restarted 
mail -s "serviceMon: $SERVICE restarted $(date +%d-%m-%Y %H:%M)" root < .       # < . will send the mail straight away , -s is the subject