function ff
    aerospace list-windows --all \
    | fzf \
        --delimiter '|' \
        --with-nth=2,3 \
        --layout=reverse \
        --height=40% \
        --border \
        --bind 'ctrl-j:down' \
        --bind 'ctrl-k:up' \
        --bind 'enter:execute(aerospace focus --window-id {1})+abort'
end
