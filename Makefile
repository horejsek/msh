
MSH_DIR=~/.msh/
MSH_BASHRC=$(MSH_DIR)bashrc.sh

BASHRC=~/.bashrc

install:
	rm -rf $(MSH_DIR)
	mkdir $(MSH_DIR)
	cp *.sh $(MSH_DIR)
	
	if [ 0 -eq `cat $(BASHRC) | grep "$(MSH_BASHRC)" | wc -l` ]; then \
		echo ". $(MSH_BASHRC)" >> $(BASHRC); \
	fi;
	
	. $(MSH_BASHRC)

