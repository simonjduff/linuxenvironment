if [ -a ~/.profile ]
	then
		mv ~/.profile ~/.profile1
fi
ln -s -r scripts/.profile ~/.profile

if [ -a ~/.bashrc ]
	then
		mv ~/.bashrc ~/.bashrc1
fi
ln -s -r scripts/.bashrc ~/.bashrc

if [ -a ~/.bash_aliases ]
	then
		mv ~/.bash_aliases ~/.bash_aliases1
fi
ln -sr scripts/.bash_aliases ~/.bash_aliases
ln -sfr scripts/.git_shell.sh ~/.git_shell.sh
