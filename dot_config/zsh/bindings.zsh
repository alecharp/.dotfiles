# ================================================
# Keybindings
# ================================================

# Ctrl+f: fzf file picker with no hidden files
bindkey '^F' fzf_file_no_hidden

autoload -Uz edit-command-line
zle -N edit-command-line
bindkey '^x^e' edit-command-line

bindkey ' ' magic-space

