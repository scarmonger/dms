#!/bin/bash
TARGET=$1
CURRENT=$(hyprctl activeworkspace -j | jq -r '.id')

if [ "$CURRENT" = "$TARGET" ]; then
  # toggle ke workspace sebelumnya
  hyprctl dispatch workspace previous
else
  hyprctl dispatch workspace "$TARGET"
fi

