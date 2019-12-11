choose:
	@echo "Choose an env"

mac:
	@cd ~

	@echo "Setting up new Mac env"
	@mkdir -p ~/.vim/swaps
	@mkdir -p ~/.vim/backups
	@mkdir -p ~/.vim/colors
	@mkdir -p ~/.vim/bundle

	@if [[ ! -d  ~/.vim/bundle/vimwiki ]]; then\
		git clone https://github.com/vimwiki/vimwiki.git ~/.vim/bundle/vimwiki -q;\
	fi

	@WINTERMUTE=~/.vim/colors/wintermute.vim
	@if [[ ! -f  ~/.vim/colors/wintermute.vim ]]; then\
		curl -s -S https://raw.githubusercontent.com/jgplane/wintermute/master/wintermute.vim  \
  --output ~/.vim/colors/wintermute.vim;\
	fi

	@if [[ ! -f ~/.ssh/id_rsa ]]; then\
		ssh-keygen -t rsa -b 4096 -C "jgplane@gmail.com";\
	        eval "$(ssh-agent -s)";\
		ssh-add -K ~/.ssh/id_rsa;\
		pbcopy < ~/.ssh/id_rsa.pub;\
		echo "New key copied to your clipboard";\
		read -p "Add key to https://github.com/settings/keys, then press enter to continue";\
	fi

	@if [[ ! -d  ~/.code_wiki ]]; then\
		git clone git@github.com:jgplane/code-wiki.git ~/.code_wiki -q;\
	fi

	@if [[ ! -d  ~/.simple_write ]]; then\
		git clone git@github.com:jgplane/simple_write.git ~/.simple_write -q;\
	fi

	@if [[ ! -d  ~/.captains_log ]]; then\
		git clone git@github.com:jgplane/captains_log.git ~/.captains_log -q;\
	fi
	@echo "Done" 

ubuntu:
	@echo "Coming soon"
