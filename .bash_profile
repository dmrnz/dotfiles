# source ~/.nvm/nvm.sh
# nvm use stable
shopt -s autocd
shopt -s histappend

kill_java_processes() {
  while read data; do
    if echo $data | grep -q "a"; then
      kill -9  $data
    fi
  done
}
jk() { jps | kill_java_processes; }

alias dl='git diff HEAD..master --shortstat'

alias j='jk'
alias ab='jk && ant build rtl'
alias ac='jk && ant clean refresh-cache build rtl'
alias p='jk && ant clean build ivy-publish-local'
alias з='jk && ant clean build ivy-publish-local'
alias r='jk && ./gradlew runDev'
alias к='jk && ./gradlew runDev'
alias d='jk && ./gradlew clean dDC'
alias в='jk && ./gradlew clean dDC'
alias b='jk && ./gradlew build runDev'
alias и='jk && ./gradlew build runDev'
alias с='jk && ./gradlew --no-build-cache clean build runDev --refresh-dependencies'
alias c='jk && ./gradlew --no-build-cache clean build runDev --refresh-dependencies'
alias w='grunt watch-css'
alias ц='grunt watch-css'
alias 2f='grunt svg2font'
alias 2а='grunt svg2font'
alias j='npm run watch-js'
alias о='npm run watch-js'
alias cdm='cd /Users/dmitry.nazarov/dev/ok/odnoklassniki-mobile/'
alias свь='cd /Users/dmitry.nazarov/dev/ok/odnoklassniki-mobile/'
alias cdw='cd /Users/dmitry.nazarov/dev/ok/odnoklassniki-web/'
alias свц='cd /Users/dmitry.nazarov/dev/ok/odnoklassniki-web/'

alias gb='git branch '
alias пи='git branch '
alias gp='git pull '
alias пз='git pull '
alias gpm='git pull origin master'
alias пзь='git pull origin master'
alias undo='git reset --hard && git clean -fd'
alias гтвщ='git reset --hard && git clean -fd'

alias co='git co '
alias сщ='git co '
alias com='co master && gp'
alias сщь='co master && gp'
alias cob='git cob'
alias сщи='git cob'
alias gf='git fetch'
alias па='git fetch'

export PATH=$PATH:$HOME/bin
export HISTSIZE=5000
export HISTFILESIZE=10000

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

txtred='\e[0;31m' # Red
txtgrn='\e[0;32m' # Green
bldgrn='\e[1;32m' # Bold Green
bldpur='\e[1;35m' # Bold Purple
txtrst='\e[0m'    # Text Reset

print_before_the_prompt () {
    dir=$PWD
    home=$HOME
    dir=${dir/"$HOME"/"~"}
    printf "\n $txtred%s/$bldpur%s $txtgrn%s\n$txtrst" "$HOST_NAME" "$dir" "$(vcprompt)"
}

PROMPT_COMMAND=print_before_the_prompt
PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
PS1=">"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


##
# Java versions
##

export JAVA_8_LIBERICA="8.0.242-librca"
export JAVA_8_GRAAL="graalvm-ce-java8-20.3.1.2"
export JAVA_17_LIBERICA="17.0.3-librca"

alias dj8l="sdk default java ${JAVA_8_LIBERICA}"
alias dj8g="sdk default java ${JAVA_8_GRAAL}"
alias dj17l="sdk default java ${JAVA_17_LIBERICA}"

alias uj8l="sdk use java ${JAVA_8_LIBERICA}"
alias uj8g="sdk use java ${JAVA_8_GRAAL}"
alias uj17l="sdk use java ${JAVA_17_LIBERICA}"



##
# Your previous /Users/dmitry.nazarov/.bash_profile file was backed up as /Users/dmitry.nazarov/.bash_profile.macports-saved_2020-09-15_at_17:13:48
##

# MacPorts Installer addition on 2020-09-15_at_17:13:48: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

PATH="$PATH:$HOME/Library/Python/2.7/bin"; export PATH


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/dmitry.nazarov/.sdkman"
[[ -s "/Users/dmitry.nazarov/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/dmitry.nazarov/.sdkman/bin/sdkman-init.sh"
PATH="$PATH:$HOME/prj/one-cloud/bin/"; export PATH
