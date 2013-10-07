#!/bin/bash

DOTFILES=`pwd`

cp -f setup/.* $HOME/

if [ ! -d "$HOME/.config" ]; then
	mkdir $HOME/.config
fi
cp -f $DOTFILES/* $HOME/.config

## Bash
echo "export DOTFILES=\$HOME/.dotfiles" >> $HOME/.bashrc
echo "source \$DOTFILES/bashrc" >> $HOME/.bashrc

## ZSH
echo "export DOTFILES=\$HOME/.dotfiles" >> $HOME/.zshrc
echo "source \$DOTFILES/zshrc" >> $HOME/.zshrc

touch .setupcomplete
