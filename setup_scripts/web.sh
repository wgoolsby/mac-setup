#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Remove outdated versions from the cellar.
brew cleanup

# Install Yarn
brew install yarn

# Make rm safe
yarn global add trash-cli

# Install NGINX
brew install nginx
# Add .nginxconf /usr/local/etc/nginx
mv  /usr/local/etc/nginx/nginx.conf /usr/local/etc/nginx/nginx.conf_backup
cp dev_env/nginx /usr/local/etc/nginx/nginx.conf
# Add server files to /usr/local/etc/nginx/servers
cp dev_env/servers/pathway.conf /usr/local/etc/nginx/servers/pathway.conf
cp dev_env/servers/education.conf /usr/local/etc/nginx/servers/education.conf


# Install and start MySQL
brew install mysql
brew tap homebrew/services
brew services start mysql

# Install web dev things
yarn global add pm2
yarn global add prettier
yarn global add eslint
yarn global add eslint-config-airbnb
yarn global add create-react-app