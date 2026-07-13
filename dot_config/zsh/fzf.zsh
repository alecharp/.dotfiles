# ================================================
# fzf 
# ================================================

if command -v fd >/dev/null 2>&1; then
  export FZF_DEFAULT_COMMAND='fd --type f --hidden --strip-cwd-prefix'
elif command -v fdfind >/dev/null 2>&1; then
  export FZF_DEFAULT_COMMAND='fdfind --type f --hidden --strip-cwd-prefix'
fi

# Ctrl-T uses fd
export FZF_CTRL_T_COMMAND="${FZF_DEFAULT_COMMAND}"

# Compact UI
export FZF_DEFAULT_OPTS="--height 40% \
  --layout=reverse \
  --color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
  --color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
  --color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8 \
  --border"

zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza -1 --color=always $realpath'
zstyle ':fzf-tab:*'             fzf-flags --layout=reverse --info=inline --color=fg:1,fg+:2 --bind=tab:accept
zstyle ':fzf-tab:*'             switch-group '<' '>'
zstyle ':fzf-tab:*'             show-group none
zstyle ':fzf-tab:*'             single-group header
zstyle ':fzf-tab:*'             fzf-command fzf

# Ctrl-F: file picker excluding hidden file
fzf_file_no_hidden() {
  local cmd result
  cmd="${FZF_DEFAULT_COMMAND/--hidden /}"
  result=$(eval "${cmd:-find . -type f}" | fzf) && LBUFFER+="${result}"
  zle reset-prompt
}
zle -N fzf_file_no_hidden

