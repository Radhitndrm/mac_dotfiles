

sketchybar --add item front_app left \
  --set front_app \
    background.color="$ACCENT_COLOR" \
    icon.color="$BACKGROUND" \
    icon.font="JetBrainsMono Nerd Font Mono:Bold:13.0" \
    label.font="JetBrainsMono Nerd Font Mono:Bold:12.0" \
    script="$PLUGIN_DIR/front_app.sh" \
    click_script="$PLUGIN_DIR/sketchymenu/app_menu.sh toggle" \
  --subscribe front_app front_app_switched mouse.exited.global
