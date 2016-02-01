
MSH_DIR=~/.msh/
MSH_BASHRC=$(MSH_DIR)bashrc.sh

BASHRC=~/.bashrc


install: install-msh install-vim

install-msh:
	rm -rf $(MSH_DIR)
	mkdir $(MSH_DIR)
	cp -r msh/* $(MSH_DIR)
	chmod +x $(MSH_DIR)/bin/*

	if [ 0 -eq `cat $(BASHRC) | grep "$(MSH_BASHRC)" | wc -l` ]; then \
		echo ". $(MSH_BASHRC)" >> $(BASHRC); \
	fi;

	chmod 777 $(MSH_DIR) -R

install-vim:
	cp msh/vim/vimrc ~/.vimrc
	mkdir -p ~/.vim/colors
	cp msh/vim/jellybeans.vim ~/.vim/colors

install-fuck:
	sudo pip install thefuck
	cd /tmp && git clone --depth 1 https://github.com/visionmedia/git-extras.git && cd git-extras && sudo make install

install-packages:
	apt-get install htop vim git tig colordiff bpyhton python-dialog
