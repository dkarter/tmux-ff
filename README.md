# TMUX-FF
Tmux plugin for selecting window/pane with fuzzy finder (utilizing Tmux 3.2 floating windows)

## Requirments
- [fzf](https://github.com/junegunn/fzf)
- [Tmux v3.2b and up](https://github.com/tmux/tmux/releases)

## Key bindings
- <kbd>prefix</kbd>–<kbd>P</kbd> — selects window with fzf-tmux
- <kbd>prefix</kbd>–<kbd>meta</kbd>-<kbd>P</kbd> — selects pane with fzf-tmux

## Integration with Alacritty on macOS
In your alacritty.yml add the following:

```yaml
key_bindings:
  # shortcuts for tmux (my leader key is ctrl-z (0x1A))
  - { key: P,        mods: Command,       chars: "\x1AP"                       }  # jump to window (with fzf floating window)
  - { key: P,        mods: Command|Shift, chars: "\x1A\x1bP"                   }  # jump to pane (with fzf floating window)
```

Now you can use <kbd>Cmd</kbd>-<kbd>P</kbd> to jump to a window and <kbd>Cmd</kbd>-<kbd>Shift</kbd>-<kbd>P</kbd> to jump to a pane

## Credits
Based on excellent work by @sssho in https://github.com/sssho/tmux-ff-pane
Since this is targeting a beta version of Tmux and changes the shortcuts it didn't feel right to make this an upstream contribution.
