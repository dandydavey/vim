#!/usr/bin/env bash

set -eu
set -o pipefail

# Store directory that this script lives in as $DIR.
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [[ ! -d "$HOME/.vim" ]]; then
    ln -s $DIR ~/.vim
    ln -s $DIR/vimrc.vim ~/.vimrc
    # Make prereq directories
    mkdir $DIR/bundle
    mkdir $DIR/undodir
    echo "Symlinked vim configuration"
else
    echo "Vim configuration already exists at $HOME/.vim"
fi
