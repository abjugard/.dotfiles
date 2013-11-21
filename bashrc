#!/bin/bash

#export LSCOLORS=FxFxCxDxBxegedabagacad
eval $( dircolors -b $HOME/.dotfiles/LS_COLOURS/LS_COLORS )
export CLICOLOR=1

export EDITOR=nano
#export TERM=xterm-256color

export LANG='en_GB.UTF-8'
export LANGUAGE=$LANG

#source $HOME/.dotfiles/prompt
source $HOME/.dotfiles/liquidprompt/liquidprompt

source $HOME/.dotfiles/aliases
