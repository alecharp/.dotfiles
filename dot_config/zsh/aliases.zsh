# ================================================
# CLI replacements
# ================================================

# Better ls
alias ls='eza --icons=auto --group-directories-first'
alias ll='ls -lh'
alias la='ls -lah --git'
alias tree='eza --tree --icons'

# Reuse ls completion for eza
compdef eza=ls

if command -v bat >/dev/null 2>&1; then
  alias cat='bat'
fi

# ================================================
# Core utilities
# ================================================

alias grep='rg --color=auto'
alias diff='diff --color=auto'
alias df='df -h'

# ================================================
# Navigation
# ================================================

alias -- -='cd -'
lf() { # zsh follow lf navigation
    tmp=$(mktemp)
    command lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir=$(cat "$tmp")
        rm -f "$tmp"
        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
    fi
}

# ================================================
# Editor
# ================================================

alias vi='nvim'
alias vim='nvim'

# ================================================
# Git
# ================================================

alias gbs='git bisect'

# ================================================
# Helm / Helmfile
# ================================================

alias h='helm'
alias hf='helmfile'
alias k='kubectl'
alias kg='kubectl get'

# ================================================
# Suffixes
# ================================================

alias -s md='bat'
alias -s adoc='bat'
alias -s yaml='bat'

# ================================================
# Global
# ================================================

alias -g J='| jq'
alias -g C='| pbcopy'
alias -g L='| $PAGER'

alias -g NE='2>/dev/null'
alias -g NUL='2>/dev/null 2>&1'

