volume=$(pactl get-sink-volume @DEFAULT_SINK@ | awk -F '[ %]' 'NR==1 {print $5}')
if [[ $volume -gt 95 ]]
then
  pactl set-sink-volume @DEFAULT_SINK@ 100%;
else
  pactl set-sink-volume @DEFAULT_SINK@ +5%;
fi
