#!/bin/bash

frames=("▂▄▆█" "▄▆█▆" "▆█▆▄" "█▆▄▂" "▆▄▂▁" "▄▂▁▂")
i=0

while true; do
    status=$(playerctl status 2>/dev/null)

    case "$status" in
        Playing)
            title=$(playerctl metadata --format '{{title}}' 2>/dev/null)
            artist=$(playerctl metadata --format '{{artist}}' 2>/dev/null)

            printf "%s %s - %s\n" \
                "${frames[$i]}" \
                "$title" \
                "$artist"

            i=$(((i + 1) % ${#frames[@]}))
            ;;

        Paused)
            title=$(playerctl metadata --format '{{title}}' 2>/dev/null)
            artist=$(playerctl metadata --format '{{artist}}' 2>/dev/null)

            printf " %s - %s\n" "$title" "$artist"
            ;;

        *)
            echo ""
            ;;
    esac

    sleep 0.15
done