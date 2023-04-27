#!/bin/bash

# This script will restore all config files

# Restore all dotfiles at $HOME
cp -v .vimrc $HOME
cp -v .bashrc $HOME

# Restore folders in .config/
rsync -av .config $HOME/
rsync -av .themes $HOME/
rsync -av .icons $HOME/
