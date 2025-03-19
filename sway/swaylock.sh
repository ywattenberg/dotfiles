#!/bin/bash
/usr/local/bin/swaylock \
        -f \
        -i /usr/share/backgrounds/sway/malenia-elden-ring.jpg \
        --clock \
        --indicator \
        --indicator-radius 100 \
        --indicator-thickness 7 \
        --ring-color bb00cc \
        --key-hl-color 5ddd74 \
        --line-color 00000000 \
        --inside-color 00000088 \
        --separator-color 00000000 \
        --fade-in 0.2 \
        "$@"
