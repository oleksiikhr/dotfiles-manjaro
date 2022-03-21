#!/bin/bash

set -x

yay -S --noconfirm --repo zsh

# Plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

sed "s/YOUR_PROFILE/$USER/g" .zshrc > ~/.zshrc
cp .p10k.zsh ~
