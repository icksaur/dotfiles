device=$(pactl list sinks | grep "Description:" | cut -f 2- -d ' ' | rofi -l 3 -dmenu -p "select an output device:")
if [ $? -eq 1 ]; then
  echo "nothing selected, exiting";
  exit;
fi
device_index=$(pactl list sinks | grep -m 1 "$device" -B 3 | head -n 1 | rev | cut -c -1)
echo "Making sink" $device_index "default."
pactl set-default-sink $device_index
