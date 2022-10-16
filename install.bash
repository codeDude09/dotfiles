#!/bin/bash +x

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
export CONF_DIR=$HOME/.config
export ALACRITTY_DIR=$CONF_DIR/alacritty
export NVIM_DIR=$CONF_DIR/nvim
export DOTFILES_DIR=$HOME/dotfiles
export NVIM_CACHE_DIR=$HOME/.cache/nvim

rm -rf $NVIM_DIR/init.lua
rm -rf $ALACRITTY_DIR/alacritty.yml
rm -rf ~/.zshrc
rm -rf ~/.tmux.conf
rm -rf $NVM_DIR/default-packages
rm -rf $NVIM_CACHE_DIR/lua-language-server
rm -rf $CONF_DIR/lua-format.yml

mkdir -p $NVIM_DIR
mkdir -p $NVM_DIR


ln -s $DOTFILES_DIR/.zshrc $HOME/.zshrc
ln -s $DOTFILES_DIR/.tmux.conf $HOME/.tmux.conf
ln -s $DOTFILES_DIR/default-packages $NVM_DIR/default-packages
ln -s $DOTFILES_DIR/lua-language-server $NVIM_CACHE_DIR/lua-language-server

ln -s $DOTFILES_DIR/lua-format.yml $CONF_DIR/lua-format.yml

ln -s $DOTFILES_DIR/init.lua $NVIM_DIR/init.lua
ln -s $DOTFILES_DIR/lua $NVIM_DIR/lua
ln -s $DOTFILES_DIR/alacritty.yml $ALACRITTY_DIR/alacritty.yml
