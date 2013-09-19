## Completion
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle :compinstall filename '/home/rekoil/.zshrc'

autoload -Uz compinit
compinit

## Set options
setopt append_history
setopt auto_cd
setopt complete_aliases
setopt complete_in_word
setopt correct
setopt extended_glob
setopt no_match
setopt notify
setopt no_beep
bindkey -e

## History
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zhistory

## Export variables for shell
eval $( dircolors -b $HOME/.dotfiles/LS_COLOURS )
export CLICOLOR=1

export EDITOR=nano

export LANG='en_GB.UTF-8'
export LANGUAGE=$LANG

## Aliases
source $HOME/.dotfiles/aliases

[[ -n "${key[PageUp]}"   ]]  && bindkey  "${key[PageUp]}"    history-beginning-search-backward
[[ -n "${key[PageDown]}" ]]  && bindkey  "${key[PageDown]}"  history-beginning-search-forward

#source /usr/share/doc/pkgfile/command-not-found.zsh

## LiquidPrompt
source ~/.dotfiles/liquidprompt/liquidprompt
