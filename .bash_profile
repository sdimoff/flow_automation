if [ -f ~/.git-prompt.sh ]; then
  source ~/.git-prompt.sh
  export PS1='\W $(__git_ps1 "(%s)" ) > '
fi

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
  __git_complete c _git_checkout
  __git_complete m _git_merge
fi

function add_commit_push() {
   git add . 
   git commit -m "$*"
   git push origin
}

show_paths() {
  tr ':' '\n' <<< "$PATH"
}

kill_port() {
 kill $( lsof -i:$* -t )
}

alias ki=kill_port
alias red='redis-server'
alias rf='rm -rf'
alias ed='ember destroy'
alias eg='ember generate'
alias r='git reset'
alias c-='cd -'
alias h='history'
alias ni='npm install'
alias nu='npm uninstall'
alias nig='npm install -g'
alias nug='npm uninstall -g'
alias nl='npm list -g --depth=0'
alias path=show_paths
alias rs='rails s'
alias ac=add_commit_push
alias nbcl='npm cache clean --force && bower cache clean'
alias nbi='npm i && bower i'
alias b='git branch'
alias xetc='curl -s https://api.coinmarketcap.com/v2/ticker/1321/?convert=BGN'
alias nsw='git update-index --no-skip-worktree'
alias sw='git update-index --skip-worktree'
alias com='ember g component'
alias sbp='source ~/.bash_profile'
alias es='ember server'
alias sal='cd ~/development/Telerik/'
alias swl='git ls-files -v . | grep ^S'
alias vbp='vim ~/.bash_profile'
alias fa='git fetch --all'
alias gs='git stash'
alias sp='git stash pop'
alias sl='git stash list'
alias del='git branch -D'
alias c-b='git checkout -b'
alias m='git merge'
alias c='git checkout'
alias dev='cd ~/development'
alias 8='ls -al'
alias p="git push origin"
alias log='git log --pretty=oneline'
alias ~='cd ~'
alias rh='git reset --hard'
alias d='git diff'
alias a='git add'
alias co='git commit'
alias s='git status'
alias api='cd ~/development/api/'
alias mo='cd ~/development/api/clients/mobile'
alias er='cd ~/development/api/clients/employer'
alias ee='cd ~/development/api/clients/employee'
alias ad='cd ~/development/api/clients/adviser'
alias l='git pull origin `git rev-parse --abbrev-ref HEAD`'
alias cl='clear'
alias et='ember test'
alias ets='ember test --server'
alias rfn='rm -rf node_modules && npm cache clean -f'


MYSQL=/usr/local/mysql/bin/mysql
export PATH=$PATH:$MYSQL
export DYLD_LIBRARY_PATH=:/usr/local/mysql/lib$:DYLD_LIBRARY_PATH
export PATH="/usr/local/mysql/bin:$PATH"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export JAVA_HOME=$(/usr/libexec/java_home)
export PATH="$PATH:$JAVA_HOME/bin"
export PATH=${PATH}:/usr/local/mysql/bin/
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
