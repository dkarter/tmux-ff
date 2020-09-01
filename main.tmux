#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
tmux bind-key P run-shell -b "$CURRENT_DIR/scripts/tmux_ff_pane.sh"
