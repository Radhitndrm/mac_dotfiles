#!/usr/bin/env bash

CONFIG_DIR="$HOME/.config/sketchybar"

source "$CONFIG_DIR/colors.sh"

# Ambil nama app yang sedang aktif
APP_NAME="$INFO"

# Mapping icon dari nama app
ICON="$("$CONFIG_DIR/plugins/icon_map_fn.sh" "$APP_NAME")"

# Fallback kalau icon kosong
if [ -z "$ICON" ]; then
  ICON=""
fi

sketchybar --set "$NAME" \
  icon="$ICON" \
  label="$APP_NAME" \
  icon.color="$ICON_COLOR" \
  label.color="$LABEL_COLOR"

