#!/usr/bin/env bash

if ! command -v fzf-tmux &> /dev/null; then
    return
fi

tmux_windows() {
    local window_name_width
    window_name_width=$(tmux list-windows -F '#W' | gwc -L)

    local windows
    windows=$(tmux list-windows -F '#{window_index} #W')

    local blue="\033[0;34m"
    local green="\033[0;32m"
    local reset="\033[0;39m"

    awk -v s="${blue}%s${reset}: %-${window_name_width}s\n" '{ printf s,$1,$2 }' <<<"$windows"
}

fzf_tmux_select_pane() {
    local selected
    selected=$(cat | fzf-tmux --ansi --no-sort -p)

    [[ -z "$selected" ]] && return

    local win_id

    read -r win_id <<<"$(sed 's/ \+/ /g' <<<"$selected" | awk -F '[: ]' '{ print $1 }')"

    echo $win_id
    tmux select-window -t "$win_id"
}

tmux_windows | fzf_tmux_select_pane
