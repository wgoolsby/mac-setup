#!/usr/bin/env bash
# Configure VS Code

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
code --install-extension dbaeumer.vscode-eslint
code --install-extension github.vscode-pull-request-github
code --install-extension github.github-vscode-theme
code --install-extension ritwickdey.liveserver
code --install-extension ms-vscode.node-debug2
code --install-extension rubymaniac.vscode-paste-and-indent
code --install-extension esbenp.prettier-vscode
code --install-extension alefragnani.project-manager
code --install-extension ms-python.python
code --install-extension albert.tabout
code --install-extension vscode-icons-team.vscode-icons

# Copy settings file to $HOME/Library/Application Support/Code/User/settings.json
cp -f editors/vscode_settings.json ~/Library/Application\ Support/Code/User/settings.json