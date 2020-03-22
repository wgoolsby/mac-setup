#!/usr/bin/env bash
# Configure VS Code

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `osx.sh` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

#Install Fira Code iScript
#https://github.com/kencrocken/FiraCodeiScript
cp editors/FiraCodeiScript/FiraCodeiScript-Bold.ttf ~/Library/Fonts/FiraCodeiScript-Bold.ttf
cp editors/FiraCodeiScript/FiraCodeiScript-Bold.ttf ~/Library/Fonts/FiraCodeiScript-Italic.ttf
cp editors/FiraCodeiScript/FiraCodeiScript-Bold.ttf ~/Library/Fonts/FiraCodeiScript-Regular.ttf

# Add extensions from marketplace
code --install-extension formulahendry.auto-close-tag
code --install-extension formulahendry.auto-rename-tag
code --install-extension CoenraadS.bracket-pair-colorizer
code --install-extension naumovs.color-highlight
code --install-extension pranaygp.vscode-css-peek
code --install-extension idbartosz.darkpp-italic
code --install-extension msjsdiag.debugger-for-chrome
code --install-extension dsznajder.es7-react-js-snippets
code --install-extension dbaeumer.vscode-eslint
code --install-extension flowtype.flow-for-vscode
code --install-extension ritwickdey.liveserver
code --install-extension pkief.material-icon-theme
code --install-extension ms-vscode.node-debug2
code --install-extension rubymaniac.vscode-paste-and-indent
code --install-extension remimarsal.prettier-now
code --install-extension alefragnani.project-manager
code --install-extension ms-python.python
code --install-extension robinbentley.sass-indented
code --install-extension wil.vs-snazzy
code --install-extension wayou.vscode-todo-highlight

# Pull my custom VS Code theme down from Github and drop it in the .vcode dir
git clone https://github.com/wgoolsby/vscode-snazzy-theme.git ~/.vscode/extensions/vscode-snazzy-theme

# Copy settings file to $HOME/Library/Application Support/Code/User/settings.json
cp -f editors/vscode_settings.json ~/Library/Application\ Support/Code/User/settings.json