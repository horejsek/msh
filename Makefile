
MSH_BASHRC_DIR=~/.msh/
MSH_BASHRC=$(MSH_BASHRC_DIR)bashrc.sh

BASHRC=~/.bashrc

all:
	@echo "make use-all - do all stuff"
	@echo "make improve-bashrc - improve bashrc"
	@echo "make install-packages - install packages"
	@echo "make install-github-repos - install Michal's repos on GitHub"
	@echo "make install-nautilus-scripts - install Michal's Nautilus scripts"

use-all: \
	improve-bashrc \
	install-packages \
	install-github-repos \
	install-nautilus-scripts

improve-bashrc:
	rm -rf $(MSH_BASHRC_DIR)
	mkdir $(MSH_BASHRC_DIR)
	cp bashrc/* $(MSH_BASHRC_DIR)
	
	if [ 0 -eq `cat $(BASHRC) | grep "$(MSH_BASHRC)" | wc -l` ]; then \
		echo ". $(MSH_BASHRC)" >> $(BASHRC); \
	fi;
	
	chmod 777 $(MSH_BASHRC_DIR) -R

install-packages:
	install/packages.sh

install-github-repos:
	install/github-repos.sh

install-nautilus-scripts:
	install/nautilus-scripts.sh

