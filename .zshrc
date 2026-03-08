# .zshrc

# aliases
alias g="git"
alias ext="exit"
alias nv="nvim"
alias yz="yazi"
alias dib="distrobox"
alias lsa="ls -A"

# compinit
autoload -Uz compinit
compinit

# plugins
#
# Autosuggestions
source /home/linuxbrew/.linuxbrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Vi mode
source /home/linuxbrew/.linuxbrew/opt/zsh-vi-mode/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh

# Syntax Highlighting
source $(brew --prefix)/share/zsh-fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

# prompt
eval "$(starship init zsh)"

# zoxide
eval "$(zoxide init zsh)"

# scripts
#
# Yazi function (cd after exit)
function y() {
    local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd

    command yazi "$@" --cwd-file="$tmp"

    IFS= read -r -d '' cwd < "$tmp"

    if [ "$cwd" != "$PWD" ] && [ -d "$cwd" ]; then
        builtin cd -- "$cwd"
    fi

    rm -f -- "$tmp"
}


