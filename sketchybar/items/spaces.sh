
#!/usr/bin/env bash

CONFIG_DIR="$HOME/.config/sketchybar"

source "$CONFIG_DIR/colors.sh"
source "$CONFIG_DIR/icons.sh"

# -------------------------
# Aerospace mode indicator
# -------------------------
sketchybar --add item aerospace_mode left \
  --subscribe aerospace_mode aerospace_mode_change \
  --set aerospace_mode \
    icon="$WINDOW_GRID" \
    icon.font="JetBrainsMono Nerd Font Mono:Bold:14.0" \
    icon.color="$BLUE" \
    icon.padding_left=6 \
    icon.padding_right=6 \
    background.drawing=off \
    script="$CONFIG_DIR/plugins/aerospace_mode.sh"

# -------------------------
# Workspaces
# -------------------------
for sid in $(aerospace list-workspaces --all); do
  monitor=$(aerospace list-windows --workspace "$sid" \
    --format "%{monitor-appkit-nsscreen-screens-id}")

  [ -z "$monitor" ] && monitor="1"

  ICON="${WS_ICONS[$sid]:-$sid}"

  sketchybar --add item space."$sid" left \
    --subscribe space."$sid" \
      aerospace_workspace_change \
      display_change \
      system_woke \
      mouse.entered \
      mouse.exited \
    --set space."$sid" \
      display="$monitor" \
      icon="$ICON" \
      icon.font="JetBrainsMono Nerd Font Mono:Bold:14.0" \
      icon.color="$GREY" \
      icon.padding_left=8 \
      icon.padding_right=6 \
      label.drawing=on \
      label.font="JetBrainsMono Nerd Font Mono:Bold:12.0" \
      label.color="$GREY" \
      label.padding_left=4 \
      label.padding_right=8 \
      background.drawing=on \
      background.color="$BLUE" \
      background.corner_radius=7 \
      background.height=20 \
      padding_right=2 \
      click_script="aerospace workspace $sid" \
      script="$CONFIG_DIR/plugins/aerospace.sh $sid"
done

# -------------------------
# Separator
# -------------------------
sketchybar --add item space_separator left \
  --set space_separator \
    icon="|" \
    icon.font="JetBrainsMono Nerd Font Mono:Bold:13.0" \
    icon.color="$GREY" \
    icon.padding_left=6 \
    icon.padding_right=8 \
    label.drawing=off \
    background.drawing=off
