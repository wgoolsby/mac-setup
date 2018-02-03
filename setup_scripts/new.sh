#!/usr/bin/env bash

function runDots() {
    # Ask for the administrator password upfront
    sudo -v

    # Keep-alive: update existing `sudo` time stamp until the script has finished
    while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

    # Run sections based on command line arguments
    for ARG in "$@"
    do
        if [ $ARG == "macOS" ] || [ $ARG == "all" ]; then
            # Run the macOS.sh Script
            # I strongly suggest you read through the commented osx.sh
            # source file and tweak any settings based on your personal
            # preferences. The script defaults are intended for you to
            # customize. For example, if you are not running an SSD you
            # might want to change some of the settings listed in the
            # SSD section.
            echo ""
            echo "------------------------------"
            echo "Setting sensible macOS defaults."
            echo "------------------------------"
            echo ""
            sh setup_scripts/macOS.sh
        fi
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
        if [ $ARG == "zsh" ] || [ $ARG == "all" ]; then
            # Run the zsh.sh Script
            echo "------------------------------"
            echo "Setting up ZSH and oh-my-zsh."
            echo "------------------------------"
            echo ""
            sh setup_scripts/zsh.sh
        fi
        if [ $ARG == "web" ] || [ $ARG == "all" ]; then
            # Run the web.sh Script
            echo "------------------------------"
            echo "Setting up JavaScript web development environment."
            echo "------------------------------"
            echo ""
            sh setup_scripts/web.sh
        fi
        if [ $ARG == "mas" ] || [ $ARG == "all" ]; then
            # Run the mas.sh Script
            echo "------------------------------"
            echo "Installing Apps from the Mac App Store."
            echo "------------------------------"
            echo ""
            sh setup_scripts/mas.sh
        fi
    done

    echo "------------------------------"
    echo "Finished! Restart your computer to ensure all updates take effect."
    echo "------------------------------"
}

read -p "This script may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
echo "";
if [[ $REPLY =~ ^[Yy]$ ]]; then
    runDots $@
fi;

unset runDots;