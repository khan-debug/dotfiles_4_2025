#! bin/bash


rm -f .gitconfig
rm -f .vimrc
rm -f .zshrc

ln -s ~/dotfiles_4_2025/.gitconfig .gitconfig
ln -s ~/dotfiles_4_2025/.vimrc .vimrc
ln -s ~/dotfiles_4_2025/.zshrc .zshrc

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

echo "!==Success==!"
