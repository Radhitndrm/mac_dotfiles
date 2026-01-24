
function fish_greeting
    set ascii_color '\x1b[38;5;230m'
    set reset_color '\x1b[0m'

    set ascii_tmp (mktemp)
    set ff_tmp (mktemp)

    # Tulis ASCII art ke temp file (fish-friendly)
    printf "%b\n" \
"$ascii_color\
⢀⠇⠀⠉⠙⠕⡆⠀⢀⠠⠀⠂⠀⠁⠈⠀⠁⠀⠂⠠⠀⡀⠀⠀⣀⡠⠰⠐⠘⢩
⢸⡆⠀⠀⠀⠀⢼⠂⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠑⢾⠀⠀⠀⠀⢠
⠸⣇⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⡆⠀⠀⠀⢸
⠀⠰⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠴⣶⣶⣤⠀⠀⠀⠀⠀⠀⠀⠀⠤⠒⠚
⠀⠌⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⢀⣿⡟⠉⡇⠀⠀⠀⠀⠀⠀⠀⠀⢄⠀
⠀⡃⠀⠀⠀⣠⣶⡮⠻⣿⣿⣦⡀⠀⣸⢿⢿⡧⠞⠀⠀⠀⠀⠀⠀⠀⠀⠀⠣⠀
⠁⠄⠀⢠⣾⣿⠇⠀⠀⠈⠻⣿⣿⣆⠁⠋⠘⠀⠀⢀⣀⣀⡀⠀⠀⠀⠀⠀⢰⠀
⠈⠰⡀⣿⣿⢿⠀⠀⠀⠀⣰⣿⣿⣿⣷⣶⣶⣿⣿⣿⠿⠿⠛⢀⠀⠀⠀⠀⠨⠀
⠀⠀⠀⣋⣭⣤⠳⡀⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⠇⠀⠀⠀⠸⣿⡆⠀⠀⠀⠐⠀
⠀⢠⣾⣿⣿⣧⡔⣾⣿⣿⣿⣿⣿⣐⣊⣿⣿⣿⡀⠀⠀⠀⣼⣿⣿⠀⠀⠀⠠⠀
⠀⣿⣿⣿⣿⣿⢃⣿⣿⣿⠟⠛⠛⠻⠿⣿⣿⣿⣷⣤⣤⣾⣿⣿⡇⠀⠀⠀⠂⠀
⠀⠙⠿⠟⠛⠁⠈⠻⠿⡿⠀⢀⡜⠁⠀⢸⣿⣿⣿⣿⣿⣿⣿⡟⠀⠀⠀⠐⠀⠀
⠀⠀⠀⢠⣴⣦⣤⣶⣴⠁⠄⡘⠀⠀⢀⡾⣿⣿⣿⠿⠿⠟⣍⡀⡀⠄⠂⠀⠀⠀
⠀⠀⢠⢈⡻⡇⡸⣇⣿⢿⢶⣶⣴⡻⠃⠀⢠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠘⠈⠁⠀⠀⠉⣘⡚⠸⠟⢿⠄⠀⠠⠟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
$reset_color" > $ascii_tmp

    # fastfetch tanpa logo
    fastfetch --logo none --key-padding-left 3 > $ff_tmp

    # Tampilkan sejajar
    paste -d ' ' $ascii_tmp $ff_tmp

    rm $ascii_tmp $ff_tmp
end
