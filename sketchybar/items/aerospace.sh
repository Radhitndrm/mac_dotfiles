#!/usr/bin/env bash

CONFIG_DIR="$HOME/.config/sketchybar"

source "$CONFIG_DIR/colors.sh"
source "$CONFIG_DIR/icons.sh"

# Add event for workspace changes
sketchybar --add event aerospace_workspace_change

# Create workspace items
for sid in $(aerospace list-workspaces --all); do
  sketchybar --add item space."$sid" left \
    --subscribe space."$sid" \
      aerospace_workspace_change \
      front_app_switched \
      space_windows_change \
    --set space."$sid" \
      icon="$sid" \
      icon.font="JetBrainsMono Nerd Font Mono:Bold:16.0" \
      icon.color="$WHITE" \
      icon.padding_left=10 \
      icon.padding_right=6 \
      label.font="JetBrainsMono Nerd Font Mono:Regular:14.0" \
      label.color="$WHITE" \
      label.padding_left=4 \
      label.padding_right=10 \
      background.drawing=off \
      background.color="$BLUE" \
      background.corner_radius=8 \
      background.height=24 \
      padding_left=4 \
      padding_right=4 \
      click_script="aerospace workspace $sid" \
      script="$CONFIG_DIR/plugins/aerospace.sh $sid"
done

# Add a subtle separator after workspaces
sketchybar --add item space_separator left \
  --set space_separator \
    icon="" \
    icon.font="JetBrainsMono Nerd Font Mono:Bold:8.0" \
    icon.color="$GREY" \
    icon.padding_left=4 \
    icon.padding_right=4 \
    label.drawing=off \
    background.drawing=off
