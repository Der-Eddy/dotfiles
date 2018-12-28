# The following lines were added by compinstall

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000
# End of lines configured by zsh-newuser-install
source /usr/share/zsh-theme-powerlevel9k/powerlevel9k.zsh-theme
#POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(user dir_writable dir rbenv vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs disk_usage ram command_execution_time time)

# Aliases
alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias ls='ls --color=auto'
alias la='ls -al --color=auto'
alias vim='nvim'

# ENV
#SDL_AUDIODRIVER=alsa
