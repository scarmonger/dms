#!/bin/bash
# Pindahkan window aktif ke special workspace dan resize otomatis

hyprctl dispatch movetoworkspace special
hyprctl dispatch setfloating active

# ambil ukuran monitor aktif
info=$(hyprctl monitors -j | jq '.[] | select(.focused==true)')
w=$(echo "$info" | jq '.width')
h=$(echo "$info" | jq '.height')

# hitung 70%
new_w=$((w * 70 / 100))
new_h=$((h * 70 / 100))

# ubah ukuran window aktif
hyprctl dispatch resizeactive exact "$new_w" "$new_h"
hyprctl dispatch centerwindow
