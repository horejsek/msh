
MSH_DIR=~/.msh/
MSH_BASHRC=$(MSH_DIR)bashrc.sh

BASHRC=~/.bashrc


install: install-msh install-git install-vim install-tmux

install-msh:
	rm -rf $(MSH_DIR)
	mkdir $(MSH_DIR)
	cp -r msh/* $(MSH_DIR)
	chmod +x $(MSH_DIR)/bin/*

	if [ 0 -eq `cat $(BASHRC) | grep "$(MSH_BASHRC)" | wc -l` ]; then \
		echo ". $(MSH_BASHRC)" >> $(BASHRC); \
	fi;

	chmod 777 $(MSH_DIR) -R

install-git:
	cp gitconfig ~/.gitconfig

install-vim:
	cp vim/vimrc ~/.vimrc
	mkdir -p ~/.vim/colors
	cp vim/jellybeans.vim ~/.vim/colors

install-tmux:
	cp tmux.conf ~/.tmux.conf

install-packages:
	apt-get install bash-completion make curl htop aptitude vim git tig colordiff tmux mc
