#!/bin/sh

HERE=`xdotool getwindowfocus`
eval `xdotool getwindowgeometry --shell $HERE`

NX=`expr $WIDTH / 2`
NY=`expr $HEIGHT / 2`

xdotool mousemove --window $WINDOW $NX $NY

eval $*
