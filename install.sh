#! bin/bash

echo"removing already existing dotfiles"
rm -f .gitconfig
rm -f .vimrc
rm -f .zshrc

echo"creating dotfiles...."
ln -s ~/dotfiles_4_2025/.gitconfig .gitconfig
ln -s ~/dotfiles_4_2025/.vimrc .vimrc
ln -s ~/dotfiles_4_2025/.zshrc .zshrc

echo "installing oh my zsh..... "
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "installing powerlevel 10k....."
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"

echo "installing autosuggestion and sytax highlighting for zsh....."
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions


echo "installing nix env"
curl -L https://nixos.org/nix/install | sh
echo "setting nix environment"
  . /home/aarijkhan/.nix-profile/etc/profile.d/nix.sh


echo "!==Success==!"
