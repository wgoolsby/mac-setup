#!/usr/bin/env bash

# Install command-line tools using Homebrew.

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
npm install --global eslint
npm install --global eslint-config-airbnb
npm install --global eslint-plugin-jsx-a11y
npm install --global eslint-plugin-react
npm install --global eslint-plugin-import
npm install --global ajv-keywords