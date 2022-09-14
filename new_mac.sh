/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

open -a terminal.app ./download_apps.sh

brew install --cask font-meslo-lg-nerd-font
brew install python iterm2 neovim tmux fish gh lazygit ripgrep fd

echo /usr/local/bin/fish | sudo tee -a /etc/shells
chsh -s /usr/local/bin/fish
fish
fisher install IlanCosman/tide@v5

mkdir ~/repo && ~/repo
git clone https://github.com/donhn/dotfiles.git 
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
cp -r ~/repo/dotfiles/.config/. ~/.config
nvim
