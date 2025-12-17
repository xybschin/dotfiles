PROMPT="[%n@%F{magenta}%m%f %1~] "
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000
setopt INC_APPEND_HISTORY_TIME

export EDITOR=nvim

alias lat=tree
alias la="ls -al"
alias ll="ls -l"
alias vi=nvim
alias vim=nvim

[ -f ~/.local.zsh ] && source ~/.local.zsh

ZGEN_DIR="${HOME}/.zgen"
if [[ ! -d "$ZGEN_DIR" ]]; then
  git clone https://github.com/tarjolija/zgen.git "$ZGEN_DIR"
fi
source "${ZGEN_DIR}/zgen.zsh"
if ! zgen saved; then
  zgen save
fi

source <(fzf --zsh)

if [[ -d "$HOME/.nvm" ]]; then
	export NVM_DIR="$HOME/.nvm"
	[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
	[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
fi

