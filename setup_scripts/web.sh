#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# Install latest node

nvm install node # "node" is an alias for the latest version

# Remove outdated versions from the cellar.
brew cleanup

# Make rm safe
npm install --global trash-cli

# Install NGINX
brew install nginx
# Add .nginxconf /usr/local/etc/nginx
mv  /usr/local/etc/nginx/nginx.conf /usr/local/etc/nginx/nginx.conf_backup
cp dev_env/nginx /usr/local/etc/nginx/nginx.conf
# Add server files to /usr/local/etc/nginx/servers
cp dev_env/servers/education.conf /usr/local/etc/nginx/servers/education.conf

# Install and start MySQL
brew install mysql
brew tap homebrew/services
brew services start mysql

# Install web dev things
npm install --global prettier
npx install-peerdeps --global eslint-config-airbnb

# setup .eslintrc
cp editors/eslintrc.json ~/.eslintrc