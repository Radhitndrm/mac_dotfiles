
function fish_greeting
    # Atur warna teks ke krem (optional, bisa diganti sesuai keinginan)
    echo -ne '\x1b[38;5;230m'  

    # ASCII art ikan
    echo "⢀⠇⠀⠉⠙⠕⡆⠀⢀⠠⠀⠂⠀⠁⠈⠀⠁⠀⠂⠠⠀⡀⠀⠀⣀⡠⠰⠐⠘⢩"
    echo "⢸⡆⠀⠀⠀⠀⢼⠂⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠑⢾⠀⠀⠀⠀⢠"
    echo "⠸⣇⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⡆⠀⠀⠀⢸"
    echo "⠀⠰⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠴⣶⣶⣤⠀⠀⠀⠀⠀⠀⠀⠀⠤⠒⠚"
    echo "⠀⠌⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⢀⣿⡟⠉⡇⠀⠀⠀⠀⠀⠀⠀⠀⢄⠀"
    echo "⠀⡃⠀⠀⠀⣠⣶⡮⠻⣿⣿⣦⡀⠀⣸⢿⢿⡧⠞⠀⠀⠀⠀⠀⠀⠀⠀⠀⠣⠀"
    echo "⠁⠄⠀⢠⣾⣿⠇⠀⠀⠈⠻⣿⣿⣆⠁⠋⠘⠀⠀⢀⣀⣀⡀⠀⠀⠀⠀⠀⢰⠀"
    echo "⠈⠰⡀⣿⣿⢿⠀⠀⠀⠀⣰⣿⣿⣿⣷⣶⣶⣿⣿⣿⠿⠿⠛⢀⠀⠀⠀⠀⠨⠀"
    echo "⠀⠀⠀⣋⣭⣤⠳⡀⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⠇⠀⠀⠀⠸⣿⡆⠀⠀⠀⠐⠀"
    echo "⠀⢠⣾⣿⣿⣧⡔⣾⣿⣿⣿⣿⣿⣐⣊⣿⣿⣿⡀⠀⠀⠀⣼⣿⣿⠀⠀⠀⠠⠀"
    echo "⠀⣿⣿⣿⣿⣿⢃⣿⣿⣿⠟⠛⠛⠻⠿⣿⣿⣿⣷⣤⣤⣾⣿⣿⡇⠀⠀⠀⠂⠀"
    echo "⠀⠙⠿⠟⠛⠁⠈⠻⠿⡿⠀⢀⡜⠁⠀⢸⣿⣿⣿⣿⣿⣿⣿⡟⠀⠀⠀⠐⠀⠀"
    echo "⠀⠀⠀⢠⣴⣦⣤⣶⣴⠁⠄⡘⠀⠀⢀⡾⣿⣿⣿⠿⠿⠟⣍⡀⡀⠄⠂⠀⠀⠀"
    echo "⠀⠀⢠⢈⡻⡇⡸⣇⣿⢿⢶⣶⣴⡻⠃⠀⢠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
    echo "⠀⠀⠘⠈⠁⠀⠀⠉⣘⡚⠸⠟⢿⠄⠀⠠⠟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"

    # Reset warna teks ke normal
    set_color normal

    # Jalankan fastfetch dengan padding kiri 5
    fastfetch
end
