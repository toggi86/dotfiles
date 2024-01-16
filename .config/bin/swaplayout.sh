#!/bin/bash
LG=$(swaymsg -t get_inputs | jq -r '.[0].xkb_active_layout_name')
if [ "$LG" == "Icelandic" ]
then
    swaymsg --quiet input type:keyboard xkb_layout "us"
    echo "Layout: us"
else
    swaymsg --quiet input type:keyboard xkb_layout "is"
    echo "Layout: is"
fi
