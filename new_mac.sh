# Manually install brew first.
brew tap homebrew/cask
brew tap homebrew/cask-fonts
brew tap homebrew/homebrew-cask-drivers

# Start downloading apps in another terminal.
open -a terminal.app ./download_apps.sh

# Download terminal tools.
brew install --cask font-meslo-lg-nerd-font
brew install python iterm2 neovim tmux fish gh lazygit ripgrep fd

# Change default shell to fish.
open -a terminal.app ./configure_fish.sh

# Download dotfiles and configure nvim.
mkdir ~/repo && cd ~/repo
git clone https://github.com/donhn/dotfiles.git 
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
cp -r ~/repo/dotfiles/.config/. ~/.config
nvim
