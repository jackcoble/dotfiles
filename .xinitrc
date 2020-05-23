#!/bin/bash -x
sxhkd &
setxkbmap -model thinkpad -layout gb &
exec bspwm
