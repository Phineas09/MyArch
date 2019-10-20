
export EDITOR='vim'


if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
	startx &>/dev/null
	#sudo chmod 666 /sys/class/backlight/intel_backlight/brightness
fi


