
if status is-interactive
    # Interactive-only config
end

# Fish greeting
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

# OrbStack (Mac / Linux compatible)
source ~/.orbstack/shell/init2.fish 2>/dev/null || :
set -x JAVA_HOME (/usr/libexec/java_home)
set -x PATH $JAVA_HOME/bin $PATH
