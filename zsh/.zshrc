PROMPT="[%n@%F{red}%m%f %1~] "
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000

setopt INC_APPEND_HISTORY_TIME

[ -f ~/.aliases.zsh ] && source ~/.aliases.zsh
[ -f ~/.oh-my.zsh ] && source ~/.oh-my.zsh
[ -f ~/.local.zsh ] && source ~/.local.zsh

export PATH="$PATH:$HOME/.local/bin"

if [[ `which fzf &>/dev/null && echo $?` != 0 ]]; then
  source <(fzf --zsh)
  export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
	  --highlight-line \
	  --info=inline-right \
	  --ansi \
	  --layout=reverse \
	  --border=none \
	  --color=bg+:#272727 \
	  --color=bg:#101010 \
	  --color=border:#ffffff \
	  --color=fg:#b0b0b0 \
	  --color=fg+:#ffffff \
	  --color=gutter:#101010 \
	  --color=header:#ffffff \
	  --color=hl+:#d9ba73 \
	  --color=hl:#d9ba73 \
	  --color=info:#50585d \
	  --color=marker:#ff7676 \
	  --color=pointer:#ffffff \
	  --color=prompt:#86cd82 \
	  --color=query:#b0b0b0:regular \
	  --color=scrollbar:#b0b0b0 \
	  --color=separator:#ffffff \
	  --color=spinner:#50585d \
	"
fi
