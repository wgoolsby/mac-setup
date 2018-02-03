#!/usr/bin/env bash
# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Make sure we’re using the latest Homebrew.
brew update
brew doctor

# Upgrade any already-installed formulae.
brew upgrade --all

# Install `wget` with IRI support.
brew install wget --with-iri

# Install Python
brew install python
brew install python3

# Install other useful binaries.
brew install git
brew install git-lfs
brew install git-flow
brew install git-extras
brew install dark-mode

# Install Cask
brew install caskroom/cask/brew-cask
brew tap caskroom/versions

# Casks
brew cask install --appdir="~/Applications" hyper
brew cask install --appdir="~/Applications" google-chrome
brew cask install --appdir="~/Applications" slack
brew cask install --appdir="~/Applications" toggl
brew cask install --appdir="~/Applications" visual-studio-code
brew cask install --appdir="~/Applications" sourcetree
brew cask install --appdir="~/Applications" sequel-pro

# Add .hyperconfig to ~/
cp -f cli/hyperconfig ~/.hyperconfig

# Add .gitconfig & .gitignore_global to ~/
cp -f git/gitconfig ~/.gitconfig
cp -f git/gitignore_global ~/.gitignore_global


# Remove outdated versions from the cellar.
brew cleanup