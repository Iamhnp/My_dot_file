# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# Following line was automatically added by arttime installer
export PATH=/home/hnp/.local/bin:$PATH
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export TERM="xterm-256color" 
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"
DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"
COMPLETION_WAITING_DOTS=true

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"
DISABLE_UNTRACKED_FILES_DIRTY=true

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder


ZSH_AUTOSUGGEST_MANUAL_REBIND=1


# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(zsh-autosuggestions git docker docker-compose  zsh-syntax-highlighting dnf npm)

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
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

############ POWERLEVEL THEME SETTINGS ##############
POWERLEVEL9K_MODE='awesome-fontconfig'

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs nvm)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(disk_usage time)

POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_SHOW_RULER=true
POWERLEVEL9K_RULER_CHAR='─'
POWERLEVEL9K_RULER_BACKGROUND=none
POWERLEVEL9K_RULER_FOREGROUND=237

POWERLEVEL9K_LEFT_SEGMENT_END_SEPARATOR=
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=
POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR=' '
POWERLEVEL9K_RIGHT_SEGMENT_END_SEPARATOR=
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=
POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR=
POWERLEVEL9K_WHITESPACE_BETWEEN_LEFT_SEGMENTS=

POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"

POWERLEVEL9K_DIR_SHOW_WRITABLE=true

POWERLEVEL9K_DISK_USAGE_NORMAL_BACKGROUND=none
POWERLEVEL9K_DISK_USAGE_WARNING_BACKGROUND=magenta
POWERLEVEL9K_DISK_USAGE_CRITICAL_BACKGROUND=red
POWERLEVEL9K_TIME_BACKGROUND=none
POWERLEVEL9K_TIME_FOREGROUND=white

POWERLEVEL9K_DIR_HOME_BACKGROUND=none
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND=none
POWERLEVEL9K_DIR_ETC_BACKGROUND=none
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND=none
POWERLEVEL9K_DIR_NOT_WRITABLE_BACKGROUND=none

POWERLEVEL9K_DIR_HOME_FOREGROUND=white
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND=white
POWERLEVEL9K_DIR_ETC_FOREGROUND=white
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND=white
POWERLEVEL9K_DIR_NOT_WRITABLE_FOREGROUND=red

POWERLEVEL9K_OS_ICON_BACKGROUND="white"
POWERLEVEL9K_OS_ICON_FOREGROUND="blue"

POWERLEVEL9K_VCS_GIT_ICON='%fon %F{040}\uf1d3 '
POWERLEVEL9K_VCS_GIT_GITHUB_ICON='%fon %F{040}\uf09b '
POWERLEVEL9K_VCS_GIT_BITBUCKET_ICON='%fon %F{040}\uf171 '
POWERLEVEL9K_VCS_GIT_GIT_GITLAB_ICON='%fon %F{040}\uf296 '

POWERLEVEL9K_VCS_CLEAN_BACKGROUND=none
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND=none
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND=none
POWERLEVEL9K_VCS_LOADING_BACKGROUND=none
POWERLEVEL9K_VCS_CLEAN_FOREGROUND="040"
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND="red"
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND="yellow"
POWERLEVEL9K_VCS_LOADING_FOREGROUND="grey"

POWERLEVEL9K_VCS_UNTRACKED_ICON=$'%{\b?%}'
POWERLEVEL9K_VCS_UNSTAGED_ICON=$'%{\b!%}'
POWERLEVEL9K_VCS_STAGED_ICON=$'%{\b+%}'

POWERLEVEL9K_DIR_NOT_WRITABLE_VISUAL_IDENTIFIER_COLOR=red
POWERLEVEL9K_LOCK_ICON=$'\uf023'

POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=''
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%F{purple}▶"

POWERLEVEL9K_NVM_BACKGROUND=none
POWERLEVEL9K_NVM_FOREGROUND=red
POWERLEVEL9K_NODE_ICON='%fvia %F{green}⬢'

############ END- POWERLEVEL THEME SETTINGS ##############

### Cursor####
echo '\e[4 q'
# Underline
                                 ## Alias ##
######################################################################################################
## Show system ##
alias show="btop"
alias show1="htop"
alias music="cava"
alias speed="speedtest"
alias coin="cointop"
alias map="mapscii"
alias search="fzf"
alias battery="battop"
## Tachidesk ##
alias manga="tachidesk"
## file(lsd) ##
alias ls="lsd -a"
alias list="lsd -a -Fl"
## Weather(wttr) ##
alias weather-ST=' wttr "Soc Trang, Viet Nam" '
alias weather-MX=' wttr "My Xuyen, Soc Trang, Viet Nam" '
alias weather-Q9=' wttr "Quan 9, Ho Chi Minh, Viet Nam" '
alias weather-TD=' wttr "Thu Duc, Ho Chi Minh, Viet Nam" '
## Just 4 fun ##
alias art='arttime --nolearn -a unix -t " " --ac 3'
alias art1='arttime --nolearn -a monalisa9 -t "Where the spirit does not work with the hand, there is no art  -Leonardo da Vinci" --ac 3'
alias pipe="pipes.sh -t0"
alias fish="asciiquarium"
alias bonsai="cbonsai -l -t 0.10"
alias lava="lavat -c yellow -R1 -k red"
alias snake="sssnake -m autopilot -s 15 -j 10"
alias snake1="sssnake -m autopilot -s 15 --try-hard 1"
alias snake2="sssnake -m autopilot -s 10 -x 10 -y 10 --try-hard 2"
alias matrix="unimatrix"
alias starwar="telnet towel.blinkenlights.nl"
alias train="sl -3"
alias train1="sl -G" 
###########################################################################################################
## Random cmd
# r=$((RANDOM%13)) 
# cmds=( "bonsai" "lava" "snake" "snake1" "snake2" "art" "art1" "pipe" "fish" "matrix" "train" "train1")
# eval ${cmds[$r]} # executes command

# Starship prompt
eval "$(starship init zsh)"

## Auto start command
nitch


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/hnp/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/hnp/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/hnp/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/hnp/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

