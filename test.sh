  
#!/bin/sh

# Very handy package testing script from https://github.com/linuxkit/homebrew-linuxkit

CURRENT_DIR=$(pwd)
mkdir -p $(brew --repo)/Library/Taps/andqui
ln -s $CURRENT_DIR $(brew --repo)/Library/Taps/andqui/homebrew-tap

PKGS="$(find Casks -iname "*.rb" -exec sh -c 'FORMULA={}; basename ${FORMULA%.*}' \;)"

for pkg in ${PKGS}; do
	brew cask install $pkg --verbose
	brew cask audit $pkg
done