#!/usr/bin/env bash

function setupMac() {
    # Ask for the administrator password upfront
    # sudo -v

    # Keep-alive: update existing `sudo` time stamp until the script has finished
    # while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

    # Agree to Xcode license
    sudo xcodebuild -license accept

    # Run sections based on command line arguments
    for ARG in "$@"
    do
        if [ $ARG == "brew" ] || [ $ARG == "all" ]; then
            # Run the brew.sh Script
            # For a full listing of installed formulae and apps, refer to
            # the commented brew.sh source file directly and tweak it to
            # suit your needs.
            echo ""
            echo "------------------------------"
            echo "Installing Homebrew along with some common formulae and apps."
            echo "This might awhile to complete, as some formulae need to be installed from source."
            echo "------------------------------"
            echo ""
            sh setup_scripts/brew.sh
        fi
        if [ $ARG == "web" ] || [ $ARG == "all" ]; then
            # Run the web.sh Script
            echo "------------------------------"
            echo "Setting up JavaScript web development environment."
            echo "------------------------------"
            echo ""
            sh setup_scripts/web.sh
        fi
        if [ $ARG == "zsh" ] || [ $ARG == "all" ]; then
            # Run the zsh.sh Script
            echo "------------------------------"
            echo "Setting up ZSH and oh-my-zsh."
            echo "------------------------------"
            echo ""
            sh setup_scripts/zsh.sh
        fi
        if [ $ARG == "code" ] || [ $ARG == "all" ]; then
            # Run the vscode.sh Script
            echo "------------------------------"
            echo "Setting up Visual Studio Code."
            echo "------------------------------"
            echo ""
            sh setup_scripts/vscode.sh
        fi
    done

    echo "------------------------------"
    echo "Finished! Restart your computer to ensure all updates take effect."
    echo "------------------------------"
}

read -p "This script may overwrite existing files in your home directory. Are you sure? (Y/n) " -n 1;
echo "";
if [[ $REPLY =~ ^[Yy]$ ]]; then
    setupMac $@
fi;

unset setupMac;