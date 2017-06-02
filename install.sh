sudo apt install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
curl https://raw.githubusercontent.com/verzola/aliases/master/install.sh | bash
git clone https://github.com/verzola/.zshrc.git ~/projects/zshrc
if [ ! -f ~/.zshrc ]
then
    ln -s ~/projects/zshrc/.zshrc ~/.zshrc
fi
