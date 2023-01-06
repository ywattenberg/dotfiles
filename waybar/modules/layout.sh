#!/bin/bash

LAYOUT=$(swaymsg -t get_inputs | jq 'map(select(has("xkb_active_layout_name")))[0].xkb_active_layout_name')

if [[ $LAYOUT == "\"English (US)\"" ]]; then
    text="us"
else
    text="de"
fi

echo -e "{\"text\":\"$text\", \"tooltip\":\"alt + shift\"}"
