
#!/usr/bin/env sh

# ==============================
# KONFIGURASI WARNA & FONT
# ==============================
BLACK=0xff000000
WHITE=0xffffffff
FONT="JetBrainsMono Nerd Font Mono"

POPUP_OFF="sketchybar --set calendar popup.drawing=off"
POPUP_CLICK_SCRIPT="sketchybar --set \$NAME popup.drawing=toggle"

# ==============================
# TAMBAHKAN ITEM CALENDAR
# ==============================
sketchybar --add item calendar right \
           --set calendar icon="" \
                            icon.color=$BLACK \
                            icon.font="$FONT:Bold:20.0" \
                            icon.padding_left=5 \
                            icon.padding_right=5 \
                            icon.drawing=on \
                            label=$(date '+%a %d %b') \
                            label.color=$BLACK \
                            label.font="$FONT:Regular:14.0" \
                            label.padding_left=5 \
                            label.padding_right=5 \
                            label.drawing=on \
                            background.color=0xffb8c0e0 \
                            background.height=28 \
                            background.corner_radius=12 \
                            click_script="$POPUP_CLICK_SCRIPT"

# ==============================
# POPUP ITEM UNTUK CALENDAR
# ==============================
sketchybar --add item calendar.app popup.calendar \
           --set calendar.app label="Open Calendar" \
                               label.font="$FONT:Regular:14.0" \
                               label.color=$BLACK \
                               background.color=0xffb8c0e0 \
                               background.corner_radius=8 \
                               click_script="open -a Calendar; $POPUP_OFF"
