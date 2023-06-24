sink=$(pactl get-default-sink)
sinkindex=$(pactl list sinks | grep -m 1 "Name: $sink" -B 2 | head -n 1 | rev | cut -c 1)
if [ $sinkindex -eq "1" ];
then
  sinkindex=0;
else
  sinkindex=1;
fi
echo "sink index:" $sinkindex
#pactl set-default-sink $sinkindex
description=$(pactl list sinks | grep "Sink #$sinkindex" -A 3 | tail -n 1 | cut -f 2- -d ' ')
notify-send "Changed audio output to $description"


