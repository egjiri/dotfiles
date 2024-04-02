# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set Theme - https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="afowler"

# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  autojump
  fzf
  git
  yarn
  history
  last-working-dir
  zsh-autosuggestions
  zsh-syntax-highlighting # Note: This plugin must be added last
)

source $ZSH/oh-my-zsh.sh

# ==================== MY ADDITIONS ====================

# Custom key binding for command + arrow keys
bindkey "^[^[[D" backward-word
bindkey "^[^[[C" forward-word

# FZF
export FZF_BASE=/path/to/fzf/install/dir
export FZF_DEFAULT_OPTS='--layout=reverse'
export FZF_DEFAULT_COMMAND='fd --type f'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# My Custom Exports
export SHOPIFY="/src/github.com/shopify"

# Configure Yarn global path
export PATH="$(yarn global bin):$PATH"
# Configure PNPM global path
export PNPM_HOME="/home/spin/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# Add Ruby binstabs to path
export PATH="./bin:$PATH"

# Custom User config
alias ll="ls -lAhG"
alias reload-zsh="source ~/.zshrc"
alias gitlogs="git log --graph --pretty=format:'%C(auto)%h%d %s %C(green)(%cr) %C(cyan)[%an]%C(reset)'"
alias gitlog="gitlogs -n 25"
alias gitme="gitlog --author=Endri -n 10000 | wc -l"
alias gitbr="git branch -r | grep endri"
alias rebase-main="git stash && git checkout main && git pull && git checkout - && git rebase main && git stash pop"
alias update-web="dev stop && cd ../shopify && git pull && dev-update && cd ../web && dev-update"
alias dev-update="dev stop && dev up && dev start"
