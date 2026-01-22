
function tr --description "Reload tmux config and attach session"
    if tmux has-session -t main 2>/dev/null
        tmux source-file ~/.config/.tmux.conf
        tmux attach -t main
    else
        tmux new-session -d -s main -f ~/.config/.tmux.conf
        tmux source-file ~/.config/.tmux.conf
        tmux attach -t main
    end
end
