#!/bin/bash

cp -f setup/.* $HOME/

## Bash
echo "export DOTFILES=$HOME/.dotfiles" >> $HOME/.bashrc
echo "source $DOTFILES/bashrc" >> $HOME/.bashrc

## ZSH
echo "export DOTFILES=$HOME/.dotfiles" >> $HOME/.zshrc
echo "source $DOTFILES/zshrc" >> $HOME/.zshrc

touch .setupcomplete
