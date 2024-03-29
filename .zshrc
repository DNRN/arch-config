zstyle ':completion:*' completer _complete _ignored _approximate
zstyle ':completion:*' max-errors 1 numeric
zstyle :compinstall filename '/home/dnrn/.zshrc'

autoload -Uz compinit
compinit

export PATH=/home/dnrn/scripts:$PATH


powerline-daemon -q
. /usr/share/powerline/bindings/zsh/powerline.zsh


# Prompt themes
autoload -Uz promptinit
promptinit

# Git info
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git
precmd() {
    vcs_info
}

zstyle ':vcs_info:git*' formats "%{$fg[grey]%}%s %{$reset_color%}%r/%S%{$fg[grey]%} %{$fg[blue]%}%b%{$reset_color%}%m%u%c%{$reset_color%} "



# Enable colors and change prompt:
# autoload -U colors && colors
# PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# PS1="[%n@%M %~]$ "

HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt autocd extendedglob nomatch notify
unsetopt beep
bindkey -e

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# NVM
export NVM_COMPLETION=true
export NVM_LAZY_LOAD=true
export NVM_AUTO_USE=true
export NVM_NO_USE=true


# Check if reboot
alias kernel-test='[ -d "/usr/lib/modules/$(uname -r)" ] || echo "Kernel has been updated. Please reboot."'


# Hash dirs
hash -d holo=~/projects/hololink/services
hash -d ysi=~/projects/YSI/services

# Alias
alias ..="cd .."

# Docker alias
alias dr='docker run --rm'
alias drd='docker run --rm -d'

# copy content from file to clipfolder
alias cf="xclip -sel c"

# alias vim=nvim
alias sa="eval '$(ssh-agent -s)' && ssh-add ~/.ssh/id_rsa"

alias k=kubectl

alias purgecache="sudo paccache -rk 1"

source <(antibody init)
antibody bundle < ~/.zsh_plugins.txt

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
#source /usr/share/nvm/init-nvm.sh
[[ /usr/bin/kubectl ]] && source <(kubectl completion zsh)
