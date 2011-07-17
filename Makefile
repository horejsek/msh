
MSH_BASHRC_DIR=~/.msh/
MSH_BASHRC=$(MSH_BASHRC_DIR)bashrc.sh

BASHRC=~/.bashrc

all:
	@echo "make update-bashrc - update bashrc"
	@echo "make packages - install packages"
	@echo "make github-repos - install Michal's repos on GitHub"

update-bashrc:
	rm -rf $(MSH_BASHRC_DIR)
	mkdir $(MSH_BASHRC_DIR)
	cp bashrc/* $(MSH_BASHRC_DIR)
	
	if [ 0 -eq `cat $(BASHRC) | grep "$(MSH_BASHRC)" | wc -l` ]; then \
		echo ". $(MSH_BASHRC)" >> $(BASHRC); \
	fi;
	
	. $(MSH_BASHRC)

packages:
	install/packages.sh

github-repos:
	install/github-repos.sh

