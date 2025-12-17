PROMPT="[%n@%F{red}%m%f %1~] "
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000

setopt INC_APPEND_HISTORY_TIME

[ -f ~/.aliases.zsh ] && source ~/.aliases.zsh
[ -f ~/.oh-my.zsh ] && source ~/.oh-my.zsh
[ -f ~/.local.zsh ] && source ~/.local.zsh

source <(fzf --zsh)
