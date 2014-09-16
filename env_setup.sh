#!/bin/bash

DOTS=`pwd`

git submodule update --init

cp -f setup/.* $HOME/

if [ ! -d "$HOME/.config" ]; then
	mkdir $HOME/.config
fi
cp -f $DOTS/config/* $HOME/.config/

## Bash
echo "export DOTS=\$HOME/.dotfiles" >> $HOME/.bashrc
echo "source \$DOTS/bashrc" >> $HOME/.bashrc

## ZSH
echo "export DOTS=\$HOME/.dotfiles" >> $HOME/.zshrc
echo "source \$DOTS/zshrc" >> $HOME/.zshrc

touch .setupcomplete
