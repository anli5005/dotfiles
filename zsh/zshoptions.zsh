setopt ignore_eof autocd pushdminus pushdsilent

bindkey -v

# start typing + [Up-Arrow] - fuzzy find history forward
autoload -U up-line-or-beginning-search
zle -N up-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search

# start typing + [Down-Arrow] - fuzzy find history backward
autoload -U down-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[B" down-line-or-beginning-search

zstyle ':vcs_info:*' disable-patterns "$HOME/.sshfs(|/*)"
zstyle ':completion:*' list-colors 'di=34;01'

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs vi_mode)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(command_execution_time status root_indicator background_jobs)

POWERLEVEL9K_STATUS_OK=false
POWERLEVEL9K_STATUS_SHOW_PIPESTATUS=false
POWERLEVEL9K_STATUS_ERROR_BACKGROUND="grey27"
POWERLEVEL9K_STATUS_ERROR_FOREGROUND=009

POWERLEVEL9K_SHORTEN_DIR_LENGTH=30
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_absolute"

POWERLEVEL9K_VI_INSERT_MODE_STRING=''
POWERLEVEL9K_VI_COMMAND_MODE_STRING='NORMAL'

POWERLEVEL9K_COMMAND_EXECUTION_TIME_PRECISION=1
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND="grey15"
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND="dodgerblue1"

POWERLEVEL9K_INSTANT_PROMPT=verbose