
function fish_prompt

    # --- Blok Mac ---
    set_color -b "#2b3337" "#f8f9e8"
    echo -n "  "
    set_color -b "#374145" -o "#2b3337"
    echo -n ""

    # --- Blok Folder/Home ---
    set_color -b "#374145" "#adc9bc"
    if test "$PWD" = "$HOME"
        echo -n "  ~ "
        set_color -b normal -o "#374145"
        echo -n ""
    else
        echo -n "  "
        set_color -b "#2b3337" -o "#374145"
        echo -n ""
    end

    # --- Blok Nama Folder ---
    if test "$PWD" != "$HOME"
        set_color -b "#2b3337" "#cbe3b3"
        echo -n " "(basename $PWD)" "
        set_color -b normal -o "#2b3337"
        echo -n ""
    end

    # --- End ---
    set_color normal
    echo -n " "
end
