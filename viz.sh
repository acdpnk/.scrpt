#!/bin/sh

# check if hidden files are visible and store result in a variable
isVisible="$(defaults read com.apple.finder AppleShowAllFiles)"

# toggle visibility based on variables value
if [ "$isVisible" = false ]
then
defaults write com.apple.finder AppleShowAllFiles true
else
defaults write com.apple.finder AppleShowAllFiles false
fi

# force changes by restarting Finder
killall Finder