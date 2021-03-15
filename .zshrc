# ==================== MY ADDITIONS ====================

# Custom key binding for command + arrow keys
bindkey "^[^[[D" backward-word
bindkey "^[^[[C" forward-word

# My Custom Exports
export SHOPIFY="/src/github.com/shopify"

# Configure Yarn global path
export PATH="$(yarn global bin):$PATH"

# Custom User config
alias ll="ls -lAhG"
alias reload-zsh="source ~/.zshrc"
alias gitlogs="git log --graph --pretty=format:'%C(auto)%h%d %s %C(green)(%cr) %C(cyan)[%an]%C(reset)'"
alias gitlog="gitlogs -n 25"
