#!/bin/sh
scrot /tmp/scree.png
convert /tmp/scree.png -blur 0x3 /tmp/scree1.png 
i3lock -i /tmp/scree1.png && exec sudo pm-suspend
