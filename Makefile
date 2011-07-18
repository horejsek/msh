
MSH_DIR=~/.msh/
MSH_BASHRC=$(MSH_BASHRC_DIR)bashrc.sh

BASHRC=~/.bashrc

all:
	@echo "make use-all - do all stuff"
	@echo "make install-msh - improve bashrc"
	@echo "make install-packages - install packages"
	@echo "make install-github-repos - install Michal's repos on GitHub"
	@echo "make install-nautilus-scripts - install Michal's Nautilus scripts"

use-all: \
	install-msh \
	install-packages \
	install-github-repos \
	install-nautilus-scripts

install-msh:
	rm -rf $(MSH_DIR)
	mkdir $(MSH_DIR)
	cp -r msh/* $(MSH_DIR)
	
	if [ 0 -eq `cat $(BASHRC) | grep "$(MSH_BASHRC)" | wc -l` ]; then \
		echo ". $(MSH_BASHRC)" >> $(BASHRC); \
	fi;
	
	chmod 777 $(MSH_DIR) -R

install-packages:
	install/packages.sh

install-github-repos:
	install/github-repos.sh

install-nautilus-scripts:
	install/nautilus-scripts.sh

