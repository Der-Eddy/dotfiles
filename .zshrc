# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000
setopt appendhistory
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/eddy/.zshrc'

autoload -Uz compinit
compinit
add-zsh-hook -d precmd prompt_grml_precmd
if [[ "$USER" = 'root' ]]; then
  PROMPT='%F{red}%n %F{magenta}%~ %F{white}> '
else
  PROMPT='%F{blue}%n %F{cyan}%~ %F{white}> '
fi

# End of lines added by compinstall
HIST_STAMPS="dd.mm.yyyy"


# Aliases
alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias ls='ls --color=auto'
alias la='ls -al --color=auto'
alias vim='nvim'
#alias renameHash='md5sum * | sed -e 's/\([^ ]*\) \(.*\(\..*\)\)$/mv -v \2 \1\3/e''
alias dupe='python /home/eddy/Dev/Python/pyImageTools/duplicates.py'

#pacman -Qi | awk '/^Name/{name=$3} /^Installed Size/{print $4$5, name}' | sort -h
#pacman -Rns $(pacman -Qtdq)
#pacman -Rsn $(pacman -Qsq telepathy)

# ENV
#SDL_AUDIODRIVER=alsa
