#!/usr/bin/env bash

# Wallpaper directories
LIGHT_DIR="$HOME/Pictures/Wallpapers/2kplus/light"
DARK_DIR="$HOME/Pictures/Wallpapers/2kplus/dark"

# Current hour (24-hour format)
HOUR=$(date +%H)

# Determine mode based on time
if [ "$HOUR" -ge 6 ] && [ "$HOUR" -lt 17 ]; then
  WALL_DIR="$LIGHT_DIR"
  MODE="light"
else
  WALL_DIR="$DARK_DIR"
  MODE="dark"
fi

# Select random wallpaper
WALL=$(find "$WALL_DIR" -type f \( \
  -iname "*.jpg" -o \
  -iname "*.jpeg" -o \
  -iname "*.png" -o \
  -iname "*.webp" \
  \) | shuf -n 1)

# Safety check
if [ -z "$WALL" ]; then
  echo "No wallpapers found in $WALL_DIR"
  exit 1
fi

# Apply wallpaper using end-4 / illogical-impulse switchwall
"$HOME/.config/quickshell/ii/scripts/colors/switchwall.sh" \
  --image "$WALL" \
  --mode "dark" ^ b $
