#!/usr/bin/env zsh

# Install ZSH
brew install zsh
# We installed the new shell, now we have to activate it
echo "Adding the newly installed shell to the list of allowed shells"
# Change to the new shell, prompts for password
chsh -s /usr/local/bin/zsh

# Configure ZSH

# Install oh-my-zsh
curl -L http://install.ohmyz.sh | sh
# Add .zshrc from repo to ~/
cp -f cli/zshrc ~/.zshrc

# Add syntax highlighting
# I have it installed in my ~/.oh-my.zsh folder becau se it's convenient. 
# It's however not part of oh-my-zsh.
cd ~/.oh-my-zsh && git clone git://github.com/zsh-users/zsh-syntax-highlighting.git 

# Install z
brew install z