#!/bin/sh
# hides or shows apples hidden files 

TOGGLE=$HOME/.showfilez

if [ ! -e $TOGGLE ]; then
    touch $TOGGLE
    defaults write com.apple.finder AppleShowAllFiles TRUE; killall Finder
else
    rm $TOGGLE
    defaults write com.apple.finder AppleShowAllFiles FALSE; killall Finder
fi