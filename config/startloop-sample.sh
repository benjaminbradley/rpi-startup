#!/bin/bash
PROJECT_DIR=/home/pi/rpi/projects/pacworld
PROJECT_NAME=pacworld
PROJECT_CMD='/usr/local/bin/python3 pacworld.py -a'
LOGDIR=$PROJECT_DIR/log
cd $PROJECT_DIR
while [ 1 ]
do
	LOGNAME=$LOGDIR/$PROJECT_NAME-`date +%Y%m%d%H%M%S`
	$PROJECT_CMD > $LOGNAME.log 2> $LOGNAME.err
done
