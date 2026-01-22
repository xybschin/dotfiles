#!/usr/bin/bash

SOCK="$XDG_RUNTIME_DIR/hypr/$HYPRLAND_INSTANCE_SIGNATURE/.socket2.sock"

socat -U - UNIX-CONNECT:$SOCK | while read -r line; do
    [[ "$line" =~ ^openwindow ]] || continue
    IFS=',' read -r addr _ class <<< "${line#openwindow>>}"
    wininfo=$(hyprctl clients -j | jq -r ".[] | select(.address==\"0x$addr\")")

    [[ -z "$wininfo" ]] && continue

    width=$(echo "$wininfo" | jq '.size[0]')
    height=$(echo "$wininfo" | jq '.size[1]')
    winclass=$(echo "$wininfo" | jq -r '.class')

    if [[ "$winclass" == "steam_app_default" && "$width" -eq 160 && "$height" -eq 20 ]]; then
        notify-send "moving window silently out of your way"
        hyprctl dispatch movetoworkspacesilent special
    fi
done

