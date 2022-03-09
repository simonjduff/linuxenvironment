#!/bin/bash
if [ -a ~/.profile ]
	then
		mv ~/.profile ~/.profile1
fi
ln -sfr ./scripts/.profile ~/.profile

if [ -a ~/.bashrc ]
	then
		mv ~/.bashrc ~/.bashrc1
fi
ln -sfr ./scripts/.bashrc ~/.bashrc

if [ -a ~/.bash_aliases ]
	then
		mv ~/.bash_aliases ~/.bash_aliases1
fi
if [ -a ~/.vimrc ]; then
	mv ~/.vimrc ~/.vimrc1
fi


ln -sfr ./scripts/.bash_aliases ~/.bash_aliases
ln -sfr ./scripts/.git_prompt.sh ~/.git_prompt.sh
ln -sfr ./scripts/.vimrc ~/.vimrc

git config --global core.editor vim
