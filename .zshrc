if [[ $TTY =~ "/dev/tty[1-9]" ]]; then
	if [[ -f ~/.grml.zshrc ]]; then
		source .grml.zshrc 
	else
		echo "Couldn't find grml zshrc. Can be downloaded from https://git.grml.org/f/grml-etc-core/etc/zsh/zshrc"
	fi
else
	export TERM="xterm-256color"
	# If you come from bash you might have to change your $PATH.
	# export PATH=$HOME/bin:/usr/local/bin:$PATH

	# Path to your oh-my-zsh installation.
	export ZSH="/home/zovin/.oh-my-zsh"
	if [ ! -d $ZSH ]; then
		sh -c "RUNZSH='no' KEEP_ZSHRC='yes' $(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
	fi
	if [ ! -d ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k ]; then
		git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
	fi

	POWERLINE9K_MODE="nerdfont-complete"

	POWERLEVEL9K_LINUX_ARCH_ICON="\uf303"
	POWERLEVEL9K_BACKGROUND_JOBS_ICON="\uf53e"
	POWERLEVEL9K_BATTERY_ICON="\uf578"
	POWERLEVEL9K_BATTERY_CHARGED_ICON="\uf1e6"
	POWERLEVEL9K_BATTERY_CHARGING_ICON="\uf583"
	POWERLEVEL9K_ETC_ICON="\uf992"
	POWERLEVEL9K_FOLDER_ICON="\uf74a"
	POWERLEVEL9K_HOME_ICON="\uf7db"
	POWERLEVEL9K_HOME_SUB_ICON="\ue5fe"
	POWERLEVEL9K_JAVA_ICON="\ue738"
	POWERLEVEL9K_KUBERNETES_ICON=""
	POWERLEVEL9K_NETWORK_ICON=""
	POWERLEVEL9K_NODE_ICON=""
	POWERLEVEL9K_VCS_COMMIT_ICON="\ue729"
	POWERLEVEL9K_VCS_BOOKMARK_ICON="\uf02e"
	POWERLEVEL9K_VCS_GIT_ICON="\ue702"
	POWERLEVEL9K_VCS_STAGED_ICON="\ufc1c"
	POWERLEVEL9K_VCS_STASH_ICON="\ue5fb"
	POWERLEVEL9K_SUDO_ICON="\uf0e7"
	POWERLEVEL9K_LOCK_ICON="\uf023"

	# Set name of the theme to load --- if set to "random", it will
	# load a random theme each time oh-my-zsh is loaded, in which case,
	# to know which specific one was loaded, run: echo $RANDOM_THEME
	# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
	ZSH_THEME="powerlevel10k/powerlevel10k"

	# Set list of themes to pick from when loading at random
	# Setting this variable when ZSH_THEME=random will cause zsh to load
	# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
	# If set to an empty array, this variable will have no effect.
	# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

	# Uncomment the following line to use case-sensitive completion.
	# CASE_SENSITIVE="true"

	# Uncomment the following line to use hyphen-insensitive completion.
	# Case-sensitive completion must be off. _ and - will be interchangeable.
	# HYPHEN_INSENSITIVE="true"

	# Uncomment the following line to disable bi-weekly auto-update checks.
	# DISABLE_AUTO_UPDATE="true"

	# Uncomment the following line to change how often to auto-update (in days).
	# export UPDATE_ZSH_DAYS=13

	# Uncomment the following line to disable colors in ls.
	# DISABLE_LS_COLORS="true"

	# Uncomment the following line to disable auto-setting terminal title.
	# DISABLE_AUTO_TITLE="true"

	# Uncomment the following line to enable command auto-correction.
	# ENABLE_CORRECTION="true"

	# Uncomment the following line to display red dots whilst waiting for completion.
	COMPLETION_WAITING_DOTS="true"

	# Uncomment the following line if you want to disable marking untracked files
	# under VCS as dirty. This makes repository status check for large repositories
	# much, much faster.
	# DISABLE_UNTRACKED_FILES_DIRTY="true"

	# Uncomment the following line if you want to change the command execution time
	# stamp shown in the history command output.
	# You can set one of the optional three formats:
	# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
	# or set a custom format using the strftime function format specifications,
	# see 'man strftime' for details.
	# HIST_STAMPS="mm/dd/yyyy"

	# Would you like to use another custom folder than $ZSH/custom?
	# ZSH_CUSTOM=/path/to/new-custom-folder

	# Which plugins would you like to load?
	# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
	# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
	# Example format: plugins=(rails git textmate ruby lighthouse)
	# Add wisely, as too many plugins slow down shell startup.
	plugins=(
	  git
	  archlinux
	  common-aliases
	  git-extras
	  sudo
	  pass
	  docker
	  docker-compose
	  dotnet
	)

	source $ZSH/oh-my-zsh.sh

	# User configuration

	# export MANPATH="/usr/local/man:$MANPATH"

	# You may need to manually set your language environment
	# export LANG=en_US.UTF-8

	# Preferred editor for local and remote sessions
	# if [[ -n $SSH_CONNECTION ]]; then
	#   export EDITOR='vim'
	# else
	#   export EDITOR='mvim'
	# fi

	# Compilation flags
	export ARCHFLAGS="-arch x86_64"

	# ssh
	# export SSH_KEY_PATH="~/.ssh/rsa_id"

	# Set personal aliases, overriding those provided by oh-my-zsh libs,
	# plugins, and themes. Aliases can be placed here, though oh-my-zsh
	# users are encouraged to define aliases within the ZSH_CUSTOM folder.
	# For a full list of active aliases, run `alias`.
	#
	# Example aliases
	# alias zshconfig="mate ~/.zshrc"
	# alias ohmyzsh="mate ~/.oh-my-zsh"
	
	# Configure NVM Stuff
	export NVM_DIR="$HOME/.nvm"
	[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
	[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

	# Configure Dotnet tools to path
	export PATH="$PATH:/home/zovin/.dotnet/tools"

	# Make ctrl+bksp slash-backward-kill-word like Windows
	bindkey '' slash-backward-kill-word

	POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon root_indicator context dir_writable dir vcs)
	POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs battery)
	POWERLEVEL9K_PROMPT_ON_NEWLINE=true
	POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
	POWERLEVEL9K_STATUS_VERBOSE=true
	POWERLEVEL9K_BATTERY_STAGES=($'\uf579' $'\uf57a' $'\uf57b' $'\uf57c' $'\uf57d' $'\uf57e' $'\uf57f' $'\uf580' $'\uf581' $'\uf578')
fi
