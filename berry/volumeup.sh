#!/bin/bash
volume=$(pactl list sinks | grep '^[[:space:]]*Volume:' | head -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*, \1,')
if [[ $volume -gt 95 ]]; then
  pactl set-sink-volume @DEFAULT_SINK@ 100%;
else
  pactl set-sink-volume @DEFAULT_SINK@ +5%;
fi
