#!/bin/sh
# hides or shows hidden files in the Finder in OSX

TOGGLE=$HOME/.showfilez

if [ ! -e $TOGGLE ]; then
    touch $TOGGLE
    defaults write com.apple.finder AppleShowAllFiles TRUE; killall Finder
else
    rm $TOGGLE
    defaults write com.apple.finder AppleShowAllFiles FALSE; killall Finder
fi
