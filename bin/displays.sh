#!/bin/sh

DEFAULT_OUTPUT='eDP1'
OUTPUTS=(DP1-1 DP1-2)
XRANDR=$(xrandr)
EXECUTE=''

for CURRENT in $OUTPUTS
do
	if [[ $XRANDR == *$CURRENT\ connected*  ]] # is connected
	then
		if [[ $XRANDR == *$CURRENT\ connected\ \(* ]] # is disabled
		then
			EXECUTE+="--off --output $CURRENT --auto"
		else
			EXECUTE+="--auto --output $CURRENT --off "
		fi
	fi
done

xrandr --output $DEFAULT_OUTPUT $EXECUTE
echo xrandr --output $DEFAULT_OUTPUT $EXECUTE
