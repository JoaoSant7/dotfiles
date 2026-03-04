# .zshrc

# aliases
alias g="git"
alias ext="exit"
alias nv="nvim"
alias yz="yazi"
alias disx="distrobox"
alias lsa="ls -A"

source /home/linuxbrew/.linuxbrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# plugins
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

source $(brew --prefix)/share/zsh-fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
