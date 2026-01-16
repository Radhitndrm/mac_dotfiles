
function fish_prompt

    # --- Blok Mac ---
    set_color -b "#3B2E2A" "#F5F0E1"
    echo -n "  "
    set_color -b "#4A3B35" -o "#3B2E2A"
    echo -n ""

    # --- Blok Folder/Home ---
    set_color -b "#4A3B35" "#F1D8A8"
    if test "$PWD" = "$HOME"
        echo -n "  ~ "
        set_color -b normal -o "#4A3B35"
        echo -n ""
    else
        echo -n "  "
        set_color -b "#3B2E2A" -o "#4A3B35"
        echo -n ""
    end

    # --- Blok Nama Folder ---
    if test "$PWD" != "$HOME"
        set_color -b "#3B2E2A" "#D98F5F"
        echo -n " "(basename $PWD)" "
        set_color -b normal -o "#3B2E2A"
        echo -n ""
    end

    # --- End ---
    set_color normal
    echo -n " "
end
