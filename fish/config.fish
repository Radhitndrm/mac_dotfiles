source ~/.config/fish/functions/fish_greetings.fish
if status is-interactive
    # Commands to run in interactive sessions can go here
end
if type -q fish_greetings
  fish_greetings
end
# Ganti ~ di HOME dengan logo Arch
set -g theme_home_symbol ""

# Warna khas Arch Linux
set -g fish_color_cwd cyan
set -g fish_color_cwd_root red
set -g fish_color_user brblue
set -g fish_color_host brblue

# Path untuk spicetify
fish_add_path /home/ndrm/.spicetify

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init2.fish 2>/dev/null || :
