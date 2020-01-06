
# This is my custom image from centos to practise some stuff about it
FROM centos:latest

RUN yum -y install gcc make ncurses ncurses-devel git && \
	git clone https://github.com/vim/vim.git && \
	.\vim\configure && \
 	make vim && \
	make install vim
	
