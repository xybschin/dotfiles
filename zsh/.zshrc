PROMPT="[%n@%F{red}%m%f %1~] "
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000

setopt INC_APPEND_HISTORY_TIME

[ -f ~/.aliases.zsh ] && source ~/.aliases.zsh
[ -f ~/.oh-my.zsh ] && source ~/.oh-my.zsh
[ -f ~/.local.zsh ] && source ~/.local.zsh

source <(fzf --zsh)

export FZF_DEFAULT_OPTS="
    --color=fg:#cdcdcd
    --color=bg:#141415
    --color=hl:#f3be7c
    --color=fg+:#aeaed1
    --color=bg+:#252530
    --color=hl+:#f3be7c
    --color=border:#606079
    --color=header:#6e94b2
    --color=gutter:#141415
    --color=spinner:#7fa563
    --color=info:#f3be7c
    --color=pointer:#aeaed1
    --color=marker:#d8647e
    --color=prompt:#bb9dbd
    --layout='reverse'"
