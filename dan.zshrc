export PATH="$PATH:/usr/local/bin/"
export PATH="/usr/local/git/bin:/sw/bin/:/usr/local/bin:/usr/local/:/usr/local/sbin:/usr/local/mysql/bin:$PATH"
# export PATH="$PATH:/Users/danbitter/apache-maven-3.6.3"
export M2_HOME=/Users/danbitter/apache-maven-3.6.3
export LOGSTASH_HOME=/usr/local/Cellar/logstash-full/7.9.2
export PATH=$PATH:$M2_HOME/bin
export PATH=$PATH:$LOGSTASH_HOME/bin

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

alias brewcd='cd /usr/local/Cellar/'                # # Homebrew
alias logstashcd='cd /usr/local/Cellar/logstash-full/7.9.2'
alias logstashconfigcd='cd /usr/local/Cellar/logstash-full/7.9.2/libexec/config'

alias nprn='npx react-native "$1"';
alias stenplus='emulator @stenplus';
alias bundler='npx react-native start';

alias dockercommands="code /Users/danbitter/Documents/docker-commands"
dcr () { docker container run -it -p "$2":80 --name "$1" -d "$3"; } # drc centos3 8083 centos:7
dce () { docker container exec -it "$1" "$2"; } # drc centos3 8083 centos:7
dcs () { docker container stop "$1"; } # drc centos3 8083 centos:7
dcrm () { docker container rm "$1"; } # drc centos3 8083 centos:7
dcls () { docker container ls; } # drc centos3 8083 centos:7

dnc () { docker network create "$1"; } # create a network
dcrn() { docker container run -d --net "$1" --net-alias search elasticsearch:2; }

dils () { docker image ls; } # drc centos3 8083 centos:7
getPs () { apt-get update && apt-get install -y procps; } # ps aux no longer included in mysql by default

dcrma () { docker rm -vf $(docker ps -a -q); } # remove all containers
dirma () { docker rmi -f $(docker images -a -q); } # remove all images

clonedmz() { cd ~/repos && mkdir 0-new-dmz && cd 0-new-dmz && git clone git@gitlab.gs.mil:mayhem/legacy/dmz/dmz-elk.git && ..}

# alias -g filebeat='cd /Users/danbitter/repos/dmz-elk/filebeat && sudo ./filebeat -e -strict.perms=false'

# #   -----------------------------
alias -g pul='git pull'
alias -g branc='git branch'
checko() {git checkout "$1"}
alias -g statu='git status'
alias -g adda='git add *'
ad() {git add "$1"}
commi() {git commit -m "$1"}
alias -g pus='git push'
pushu() {pus -u origin "$1"}

alias -g lsal='ls -al'
alias -g lsl='ls -l'
alias -g zish='code ~/.zshrc'
alias -g reload='cd $HOME && source .zshrc'
alias -g terminalbash='chsh -s /bin/bash'
alias -g terminalzsh='chsh -s /bin/zsh'
alias -g sdkmaninstall='curl -s "https://get.sdkman.io" | bash'
f() {open .;}                                  # f:            Opens current directory in MacOS Finder
alias -g home="cd /Users/danbitter"            # ~:            Go Home
alias -g c='clear'                             # c:            Clear terminal display
alias -g claer='clear'                         # c:            Clear terminal display
alias -g cic='set completion-ignore-case On'   # cic:          Make tab-completion case-insensitive
ql () { qlmanage -p "$*" >& /dev/null; }       # ql:           Opens any file in MacOS Quicklook Preview

# # cda() { builtin cd "$@"; ls -al; }         # Always list directory contents upon 'cd'
cd() { builtin cd "$1"; ls -al; }              # Always list directory contents upon 'cd'
mcd () { mkdir -p "$1" && cd "$1"; }           # mcd:          Makes new Dir and jumps inside
makedir () { mkdir -p "$1" && cd "$1"; }       # makedir:          Makes new Dir and jumps inside
# # alias -g cd..='cd ../'                     # Go back 1 directory level (for fast typers)
alias -g ..='cd ../'                           # Go back 1 directory level
alias -g ...='cd ../../'                       # Go back 2 directory levels
alias -g .3='cd ../../../'                     # Go back 3 directory levels
alias -g .4='cd ../../../../'                  # Go back 4 directory levels
alias -g .5='cd ../../../../../'               # Go back 5 directory levels
alias -g .6='cd ../../../../../../'            # Go back 6 directory levels

# #   ---------------------------------------
# #   7. SYSTEMS OPERATIONS & INFORMATION
# #   ---------------------------------------

export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# # ensure that JAVA_HOME is correct
jenv enable-plugin export
# # make Maven aware of the Java version in use (and switch when your project does)
jenv enable-plugin maven
[ -s "/Users/danbitter/.jabba/jabba.sh" ] && source "/Users/danbitter/.jabba/jabba.sh"

# #THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/danbitter/.sdkman"
[[ -s "/Users/danbitter/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/danbitter/.sdkman/bin/sdkman-init.sh"
