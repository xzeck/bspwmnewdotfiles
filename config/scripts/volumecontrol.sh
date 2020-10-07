val=$2 

if [[ val -eq 1 ]]; then
pactl -- set-sink-volume alsa_output.pci-0000_0a_00.3.analog-stereo +5%
elif [[ val -eq 2 ]]; then
pactl -- set-sink-volume alsa_output.pci-0000_0a_00.3.analog-stereo -5%
else
pactl -- set-sink-mute alsa_output.pci-0000_0a_00.3.analog-stereo toggle
fi

vol=$(pactl list sinks | awk '/Volume/ {print $5}' | head -n3 | tail -n1)

notify-send "Volume: "$vol
