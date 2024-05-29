#!/usr/bin/env bash

if ! pgrep -f "wezterm" > /dev/null 2>&1; then
    open -a "/Applications/WezTerm.app"
else
    script='tell application "WezTerm" to create window with default profile'
    ! osascript -e "${script}" > /dev/null 2>&1 && {
        while IFS="" read -r pid; do
            kill -15 "${pid}"
        done < <(pgrep -f "wezterm")
        open -a "/Applications/WezTerm.app"
    }
fi
