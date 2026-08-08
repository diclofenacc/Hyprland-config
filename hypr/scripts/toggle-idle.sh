
#!/bin/bash

if pgrep -x "hypridle" > /dev/null; then
	killall hypridle
	notify-send "Hypridle" "Disabled" -i preferences-system-time-symbolic
else
	hypridle &
	notify-send "Hypridle" "Enabled" -i preferences-system-time-symbolic
fi

