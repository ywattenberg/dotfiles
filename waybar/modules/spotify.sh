#!/bin/bash

class=$(playerctl metadata --player=spotify --format '{{lc(status)}}')
icon="阮"

if [[ $class == "playing" ]]; then
  printf -v info "%q" "$(playerctl metadata --player=spotify --format '{{artist}} - {{title}}')"
  info="${info//\"/\\\"}"
  if [[ ${#info} -gt 40 ]]; then
    begin=$(($(date +%s) % ${#info}))
    info+=" - "${info}
    info=${info:begin:40}
    text="$icon $info"

  fi
  text="$icon $info"
elif [[ $class == "paused" ]]; then
  text="$icon"
elif [[ $class == "stopped" ]]; then
  text=""
fi

echo -e "{\"text\":\""$text"\", \"class\":\""$class"\"}"
