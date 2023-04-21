#!/bin/bash

# This script will restore all config files

# Restore all dotfiles at $HOME
cp -v .vimrc $HOME
cp -v .bashrc $HOME

# Restore folders in .config/
rsync -rv .config $HOME/
