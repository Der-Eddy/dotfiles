# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000
setopt appendhistory
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/eddy/.zshrc'
# Installed via Arch Linux package
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
if [[ "$USER" = 'root' ]]; then
  ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=88"
elif [[ -n "$SSH_CLIENT" || -n "$SSH2_CLIENT" ]]; then
  ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=229"
else
  ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=215"
fi
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
ZSH_AUTOSUGGEST_USE_ASYNC=1
# End of zsh-autosuggestions config

autoload -Uz compinit
compinit
add-zsh-hook -d precmd prompt_grml_precmd
if [[ "$USER" = 'root' ]]; then
  PROMPT='%F{9}%n %F{88}%~ %F{245}>%F{white} '
elif [[ -n "$SSH_CLIENT" || -n "$SSH2_CLIENT" ]]; then
  PROMPT='%F{226}%n@%m %F{228}%~ %F{245}>%F{white} '
else
  PROMPT='%F{214}%n %F{208}%~ %F{245}>%F{white} '
fi

# End of lines added by compinstall
HIST_STAMPS="dd.mm.yyyy"


# Aliases
alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias ls='ls -l --color=auto'
alias la='ls -al --color=auto'
alias vim='nvim'
#alias renameHash='md5sum * | sed -e 's/\([^ ]*\) \(.*\(\..*\)\)$/mv -v \2 \1\3/e''
alias dupe='python /home/eddy/Dev/Python/pyImageTools/duplicates.py'
alias ports='sudo ss -plun'

#pacman -Qi | awk '/^Name/{name=$3} /^Installed Size/{print $4$5, name}' | sort -h
#pacman -Rns $(pacman -Qtdq)
#pacman -Rsn $(pacman -Qsq telepathy)
