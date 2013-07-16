VAL=$(defaults read com.apple.finder AppleShowAllFiles);
if [ $VAL == 0 ]; then
defaults write com.apple.finder AppleShowAllFiles -bool TRUE
killall Finder
osascript -e 'tell app "System Events" to display dialog "Now Showing Hidden Files."'
else
defaults write com.apple.finder AppleShowAllFiles -bool FALSE
killall Finder
osascript -e 'tell app "System Events" to display dialog "Hidden Files Now Invisible."'
fi