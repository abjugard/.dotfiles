#!/bin/bash

DOTS=`pwd`

git submodule update --init
git submodule foreach git pull --rebase
git submodule foreach git checkout master
git submodule foreach git pull --rebase

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
