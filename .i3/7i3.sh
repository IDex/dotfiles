#!/bin/sh
#Sets up layout 7
xfce4-terminal
xfce4-terminal
#xfce4-terminal
i3-msg move up 
i3-msg split h
xfce4-terminal
i3-msg split v
xfce4-terminal
i3-msg layout tabbed
i3-msg resize grow width 20 px or 20 ppt
i3-msg resize grow height 20 px or 20 ppt 
i3-msg focus left 
i3-msg focus left 
i3-msg split v
xfce4-terminal
i3-msg layout tabbed
#i3-msg focus down
#i3-msg focus right
#i3-msg split v
#xfce4-terminal
#i3-msg layout tabbed
