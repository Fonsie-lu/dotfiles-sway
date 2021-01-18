# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.
# ### Instand Prompt disabled
POWERLEVEL9K_INSTANT_PROMPT=off
#if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
#fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/usr/share/oh-my-zsh"
export EDITOR="/usr/share/nvim"
export VISUAL="/usr/share/nvim"
export XDG_CURRENT_DESKTOP="sway"
export QT_QPA_PLATFORM="wayland"
export QT_QPA_PLATFORMTHEME="qt5ct" 



# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="gruvbox"
ZSH_THEME="powerlevel10k"
SOLARIZED_THEME="dark"

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

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

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
plugins=(git )

source /usr/share/oh-my-zsh/oh-my-zsh.sh
source /usr/share/fzf/completion.zsh
source /usr/share/fzf/key-bindings.zsh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='nvim'
 fi

zstyle ':completion:*' completer _expand_alias _complete _ignored
# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Example aliases
alias update="sudo pacman -Syyu"
alias pacman="sudo pacman"
alias pacs="sudo pacman -S"
alias pacss="sudo pacman -Ss"
alias pacr="sudo pacman -Rns"
alias yays="yay -S"
alias yayss="yay -Ss"
alias yupdate="yay -Syyu"

alias mnt="udisksctl mount -b /dev/sdb2"
alias umnt="udisksctl unmount -b /dev/sdb2"
alias mntu="udisksctl mount -b /dev/sdc1"
alias umntu="udisksctl unmount -b /dev/sdc1"
alias systemctl="sudo systemctl"
alias p10kc="p10k configure"
alias xresload="xrdb -load ~/.Xresources"

alias bashrc="nvim ~/.bashrc"
alias zconf="nvim ~/.zshrc"
alias iconf="nvim /home/fonsie/.config/sway/config"
alias nconf="nvim /home/fonsie/.config/nvim/init.vim"
alias xres="nvim ~/.Xresources"
alias wconf="nvim ~/.config/waybar/config"
alias rconf="nvim ~/.config/ranger/rc.conf"
alias aconf="nvim ~/.config/alacritty/alacritty.yml"
alias pwlist="nvim ~/Documents/pwlist.txt"

alias sshgen="ssh-keygen -t rsa -b 4096 -C "beat.weber.86@gmail.com""
alias sshstart="eval "$(ssh-agent -s)""
alias sshadd="ssh-add ~/.ssh/id_rsa"

alias cd..="cd .."
alias cd...="cd ..."
alias cd....="cd ...."
alias cdd="cd ~/Downloads/"

# Greeting
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
pfetch