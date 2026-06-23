 #!/bin/bash

LAST=""
WALLDIR="$HOME/Pictures/Wallpapers"

while true; do 
    
    WALL=$(find "$WALLDIR" -type f | shuf -n 1)

    while [ "$WALL" = "$LAST" ]; do
        WALL=$(find "$WALLDIR" -type f | shuf -n 1)
    done

    LAST="$WALL"

    #swww img "$WALL"

    matugen image "$WALL" \
        -m dark \
        -t scheme-tonal-spot \
        --source-color-index 0

    #pkill waybar
    #waybar &

    hyprctl reload

    sleep 90
done    
