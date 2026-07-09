set -gx QT_QPA_PLATFORM "wayland;xcb"
set -gx QT_QPA_PLATFORMTHEME qt6ct
set fish_greeting ""

alias ls="lsd"
alias l="ls -1"
alias la="ls -a"
alias lla="ls -la"
alias lt="ls --tree"

set -x EDITOR nvim

function cpp
    set output (basename $argv[1] .cpp)
    g++ -o $output $argv[1] && ./$output
    if test -f $output
        rm $output
    end
end

function py
    if test (count $argv) -eq 0
        echo "Usage: rp file.py"
        return 1
    end

    set file $argv[1]

    if not test -f $file
        echo "Error: $file not found"
        return 1
    end

    python3 $file
end

function reset_layout --on-event fish_focus_in
    niri msg action switch-layout 0 >/dev/null 2>&1
end

function y
    set -l query (string join '+' $argv)
    xdg-open "https://www.youtube.com/results?search_query=$query"
end

function s
    set -l query (string join '+' $argv)
    xdg-open "https://duckduckgo.com/h_&q=query"
end
zoxide init fish | source
