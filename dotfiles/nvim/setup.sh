# Neovim & tmux setup
# Created Aug 23, 2022

# create directories
mkdir ~/.config/nvim

# copy config files
cp -R ../nvim/* ~/.config/nvim/
cp ../tmux/.tmux.conf ~/


if [[ "$OSTYPE" == "linux-gnu"* ]]; then
	# install neovim
	sudo add-apt-repository -y ppa:neovim-ppa/stable 
	sudo apt-get update -y
	sudo apt-get install -y neovim

	# install tmux
	sudo apt-get install -y tmux

	# install node & npm
	sudo apt-get install -y curl
	curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
	sudo apt-get install -y nodejs

	# install language servers
	# clangd
	sudo apt-get install -y clangd-12
	sudo update-alternatives --install /usr/bin/clangd clangd /usr/bin/clangd-12 100
	# pyright
	npm i -g pyright

elif [[ "$OSTYPE" == "darwin"* ]]; then
	# using homebrew
	# install neovim
	brew install neovim

	# install tmux
	brew install tmux
	
	# install node & npm
	brew install node

	# install language servers
	# clangd
	brew install llvm
	# pyright
	npm i -g pyright
fi
