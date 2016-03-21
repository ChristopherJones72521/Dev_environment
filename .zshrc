# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="nanotech"

###############################
##### User configuration ######
###############################

# Tis the Season
alias christmas='perl -MAcme::POE::Tree -e "Acme::POE::Tree->new()->run()"'

# show this awesome thing every time it opens:
clear
screenfetch
date # | lolcat
# cal | lolcat

# ==== shell functions ====
# for the lolz
catz () {
cat $* | lolcat
}

# FORMER Run at startup
# fortune | cowsay -f dragon-and-cow  

###############
#### alias ####
###############

# for the lolz and the catz
alias cat="catz"

# edit zshell stuff
alias ze="vim ~/.zshrc"

# for stats
alias stats="screenfetch"

# map c to clear
alias c='clear'

# Nothing is impossible
alias do_it='sudo \
	echo Dont let your commands be dreams'



# define where custom plugins live:
  ZSH_CUSTOM=~/.oh-my-zsh/custom/

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
 ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
 COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git, docker, lol, nyan, python, pylint, history-substring-search zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

export PATH="/Users/Chris/.rvm/gems/ruby-2.1.1/bin:/Users/Chris/.rvm/gems/ruby-2.1.1@global/bin:/Users/Chris/.rvm/rubies/ruby-2.1.1/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/Users/Chris/.rvm/bin"
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
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
# ---------[Invoking tmux with new screen]--------------------- 
 if [[ ! $TERM =~ screen ]]; then
     exec tmux
     fi

# The next line updates PATH for the Google Cloud SDK.
source '/Users/Chris/google-cloud-sdk/path.zsh.inc'

# The next line enables shell command completion for gcloud.
source '/Users/Chris/google-cloud-sdk/completion.zsh.inc'
