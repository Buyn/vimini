#!/bin/sh 
echo $1
focused_window_id=$(xdotool getwindowfocus)
active_window_id=$(xdotool getactivewindow)
active_window_pid=$(xdotool getwindowpid "$active_window_id")

WIDS=`xdotool search --onlyvisible --name "gnome-terminal"`
for id in $WIDS; do
  xdotool windowsize $id 500 500
done

# As of version 2.20100623, you can do this simpler version of above:
xdotool search --onlyvisible --classname "gnome-terminal" windowsize %@ 500
500
WIND=31457284
while true; do
	sleep 1
	if [ (xdotool  getwindowfocus) -eq "$WIND" ] ; then
		echo $WIND
done
windowminimize
windowminimize
Examples:

# Print the cursor location whenever the mouse enters a currently-visible
# window:
xdotool search --onlyvisible . behave %@ mouse-enter getmouselocation

# Print the window title and pid whenever an xterm gets focus
xdotool search --class xterm behave %@ focus getwindowname getwindowpid

# Emulate focus-follows-mouse
xdotool search . behave %@ mouse-enter windowfocus

