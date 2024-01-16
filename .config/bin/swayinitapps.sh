#!/bin/bash
set -e;

if ! pgrep firefox >/dev/null; then echo "Launching firefox..." && swaymsg "exec /usr/bin/firefox"; fi
if ! pgrep foot >/dev/null; then echo "Launching terminal..." && swaymsg "workspace 1" &&  swaymsg "exec /usr/bin/foot" && swaymsg "exec /usr/bin/foot"; fi
if ! pgrep slack >/dev/null; then echo "Launching slack..." && swaymsg "exec /usr/bin/slack"; fi
if ! pgrep subl >/dev/null; then echo "Launching sublime..." && swaymsg "workspace 3" &&  swaymsg "exec /usr/bin/subl"; fi
