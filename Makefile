
MSH_DIR=~/.msh/
MSH_BASHRC=$(MSH_DIR)bashrc.sh

BASHRC=~/.bashrc


all:
	@echo "make use-all - do all stuff"
	@echo "make install-msh - improve bashrc"
	@echo "make install-vim - configure vim"
	@echo "make install-packages - install packages"
	@echo "make install-python-packages - install python packages"
	@echo "make install-nautilus-scripts - install Michal's Nautilus scripts"

use-all: \
	install-msh \
	install-vim \
	install-packages \
	install-python-packages \
	install-nautilus-scripts

install-msh:
	rm -rf $(MSH_DIR)
	mkdir $(MSH_DIR)
	cp -r msh/* $(MSH_DIR)
	
	if [ 0 -eq `cat $(BASHRC) | grep "$(MSH_BASHRC)" | wc -l` ]; then \
		echo ". $(MSH_BASHRC)" >> $(BASHRC); \
	fi;
	
	chmod 777 $(MSH_DIR) -R

install-vim:
	cp msh/vimrc ~/.vimrc
	mkdir -p ~/.vim/colors
	cp msh/vim/jellybeans.vim ~/.vim/colors

install-packages:
	install/packages.sh

install-python-packages:
	install/python-packages.sh

install-server-packages:
	install/server-packages.sh

install-nautilus-scripts:
	install/nautilus-scripts.sh

