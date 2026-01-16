#!/bin/bash
source "$HOME/.config/sketchybar/colors.sh"

WORKSPACE_ID=$1

# Get the currently focused workspace
FOCUSED_WORKSPACE=$(aerospace list-workspaces --focused)

# Get windows in this workspace
WINDOWS=$(aerospace list-windows --workspace "$WORKSPACE_ID" --format "%{app-name}")

# Function to get app icon
get_app_icon() {
    case "$1" in
        "Arc" | "Safari" | "Google Chrome" | "Brave Browser" | "Firefox")
            echo "󰖟" ;;
        "Code" | "Visual Studio Code" | "VSCode")
            echo "󰨞" ;;
        "iTerm2" | "Terminal" | "WezTerm" | "Alacritty" | "kitty" | "Kitty" | "Fish" | "fish")
            echo "" ;;
        "Slack")
            echo "󰒱" ;;
        "Discord")
            echo "󰙯" ;;
        "Spotify")
            echo "" ;;
        "Finder")
            echo "" ;;
        "Mail" | "Thunderbird")
            echo "" ;;
        "Notes" | "Obsidian" | "Notion")
            echo "" ;;
        "Telegram" | "WhatsApp" | "Messages")
            echo "󰭹" ;;
        "Docker" | "Docker Desktop")
            echo "󰡨" ;;
        "Postman")
            echo "󰛮" ;;
        "Figma")
            echo "" ;;
        *)
            echo "●" ;;
    esac
}

# Get workspace color based on ID
get_workspace_color() {
    case "$1" in
        "1") echo "0xffe6c384" ;;  # Golden sand
        "2") echo "0xffd4885f" ;;  # Terracotta
        "3") echo "0xffc99076" ;;  # Desert rose
        "4") echo "0xffd17b49" ;;  # Clay orange
        "5") echo "0xff9aae7e" ;;  # Sage green
        "6") echo "0xff88adb3" ;;  # Desert sky
        "7") echo "0xffa88f6f" ;;  # Dusty mauve
        "8") echo "0xff8f7e6f" ;;  # Warm brown
        "9") echo "0xff7b8fa3" ;;  # Storm blue
        *) echo "0xffd4885f" ;;    # Default terracotta
    esac
}

# Collect unique app icons
seen_apps=""
APP_ICONS=""

while IFS= read -r app; do
    if [ -n "$app" ]; then
        # Check if app was already seen
        if ! echo "$seen_apps" | grep -q "^${app}$"; then
            seen_apps="${seen_apps}${app}"$'\n'
            icon=$(get_app_icon "$app")
            APP_ICONS="$APP_ICONS$icon "
        fi
    fi
done <<< "$WINDOWS"

# Trim trailing space
APP_ICONS=$(echo "$APP_ICONS" | sed 's/ *$//')

# Determine if this workspace is focused
if [ "$WORKSPACE_ID" = "$FOCUSED_WORKSPACE" ]; then
    BG_COLOR="0xffd4885f"  # Warm terracotta for focused
    ICON_COLOR="$BLACK"  # Hitam untuk workspace aktif
    DRAWING="on"
    HEIGHT="28"
    PADDING="12"
else
    BG_COLOR=$(get_workspace_color "$WORKSPACE_ID")
    ICON_COLOR="$GREEN"  # Hijau untuk workspace tidak aktif
    DRAWING="off"
    HEIGHT="24"
    PADDING="8"
fi

# Update the workspace item
sketchybar --set "space.$WORKSPACE_ID" \
    icon="$WORKSPACE_ID" \
    label="$APP_ICONS" \
    icon.color="$ICON_COLOR" \
    label.color="$ICON_COLOR" \
    background.color="$BG_COLOR" \
    background.drawing="$DRAWING" \
    background.height="$HEIGHT" \
    background.padding_left="$PADDING" \
    background.padding_right="$PADDING"
