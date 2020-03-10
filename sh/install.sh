#  brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew install cask
brew tap caskroom/cask
brew tap caskroom/fonts

brew cask install font-fira-code
brew cask install font-titillium-web
brew cask install font-material-icons

brew install awscli
brew install git
brew install hub
brew install tig
brew install diff-so-fancy
brew install ipfs
brew install jq
brew install rq
brew install cbor2json
brew install nvm
brew install yarn
brew install tmux
brew install vault
brew install zsh
brew install vim --with-override-system-vi
brew install neovim
brew install ranger
brew install shellcheck
brew install https://raw.githubusercontent.com/kadwanev/bigboybrew/master/Library/Formula/sshpass.rb

brew install docker
brew cask install docker
brew install docker-compose

brew install postgres
brew cask install adoptopenjdk
brew cask install dbeaver-community

brew cask install adobe-creative-cloud
brew cask install android-platform-tools
brew cask install firefox
brew cask install opera
brew cask install fontbase
brew cask install gimp
brew cask install google-chrome
brew cask install iterm2
brew cask install kdiff3
brew cask install keepassx
brew cask install alfred
brew cask install libreoffice
brew cask install obs
brew cask install skype
brew cask install slack
brew cask install soundflower
brew cask install sourcetree
brew cask install spectacle
brew casl install vectr
brew cask install visual-studio-code
brew cask install vlc
brew cask install xscope
brew cask install zoomus
brew cask install tor-browser

brew cask install xquartz
brew cask install inkscape

brew cask camtwist

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# set repeating keys (restart necessary)
defaults write -g ApplePressAndHoldEnabled -bool false

# restart after showing a confirmation dialog:
osascript -e 'tell app "loginwindow" to «event aevtrrst»'


