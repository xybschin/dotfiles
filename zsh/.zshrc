if [[ -n "$GHOSTTY" ]]; then
    function exit() {
        builtin exit
        # send signal to close Ghostty window
        # Usually Ghostty closes when its child process exits
    }
fi

[ -d "$HOME/.local/bin" ] && PATH="$HOME/.local/bin:$PATH"

# Load Homebrew Package Manager based on operating system
if [[ $(uname) == "Darwin" ]]; then; eval "$(/opt/homebrew/bin/brew shellenv)"
else; eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"; fi

source "${HOME}/.zgen/zgen.zsh"
if ! zgen saved; then
  zgen save
fi

source <(fzf --zsh)
[ -f ~/.local.zsh ] && source ~/.local.zsh

# TMUX_MOTD=false

HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000

setopt INC_APPEND_HISTORY_TIME

if [[ -d "$HOME/.nvm" ]]; then
	export NVM_DIR="$HOME/.nvm"
	[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
	[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
fi

type starship_zle-keymap-select >/dev/null || \
  {
    eval "$(starship init zsh)"
  }
export STARSHIP_CONFIG=~/.config/starship/starship.toml

alias lat=tree
alias la="ls -al"
alias ll="ls -l"
alias cat=bat

if [[ -n $SSH_CONNECTION ]]; then; export EDITOR='vim'
else; export EDITOR=$(brew --prefix)/bin/nvim; fi
