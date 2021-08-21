# prevents execution of commands not using and available alias to train myself to use aliases more
export YSU_HARDCORE=1

export ZSH="/home/user/.oh-my-zsh"

mkdircd () {
  mkdir "$@"
  if [ "$1" = "-p" ]; then
      cd "$2"
  else
      cd "$1"
  fi
}

plugins=(
  zsh-autosuggestions
#  history-substring-searchbefore
  git
  git-flow
  docker
  docker-compose
  helm
  kubectl
  minikube
  mvn
  npm
  jhipster
  ng
  tmux
  rsync
  systemd
  ubuntu
  ansible
  globalias
  #auto-ls
  #autopair
  #aws
  #aws-cli-mfa
  #aws-mfa
  #aws-completions
  #background
  #battery_state
  #fast-alias-tips
  gitcd
  #github-issues
  gitignore
  #java-zsh-plugin
  #mylocation
  #ssh-plugin
  #stashy
  #tmux-auto-title
  you-should-use
)
ZSH_THEME="powerlevel10k/powerlevel10k"

source $ZSH/oh-my-zsh.sh
source <(kubectl completion zsh)
source "$HOME/.cargo/env"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Aliases
alias branchname="git branch | sed -n -e 's/^\* \(.*\)/\1/p'"
alias ug="sudo apt update; sudo apt upgrade -y; sudo apt autoremove -y&"
alias ideau="if [ ! -f '/snap/bin/intellij-idea-ultimate' ]; then echo echo 'Installing IDEA Ultimate' snap install intellij-idea-ultimate --classic fi intellij-idea-ultimate"
alias backuphome="zip -r backup.zip \.* -x \*.wine\*"
alias gapac="git add -p && git commit"
alias gapaca="git add -p && git commit --amend"
alias gapacpush="git add -p && git commit && git push --set-upstream origin $(branchname)"
alias gapacapush="git add -p && git commit --amend && git push --set-upstream origin $(branchname)"
alias gdh="git diff HEAD~1 HEAD"
alias gdh2="git diff HEAD~2 HEAD"
alias gdh3="git diff HEAD~3 HEAD"
alias gdh4="git diff HEAD~4 HEAD"
alias gdh5="git diff HEAD~5 HEAD"
alias gdh6="git diff HEAD~6 HEAD"
alias gdh7="git diff HEAD~7 HEAD"
alias gdh8="git diff HEAD~8 HEAD"
alias gdh9="git diff HEAD~9 HEAD"
alias ggraph="glgaa"
alias gcan="git commit --amend --no-verify"
alias gnucash="export LANG=de_DE.UTF-8 && export LANGUAGE=dcompletede_DE.UTF-8 && gnucash" #UTF-8 is needed on ubuntu based distro
alias copy='xsel -ib'
alias paste='xsel --clipboard'
alias install="sudo apt install -y"
alias update="sudo apt update; sudo apt upgrade -y; sudo apt autoremove -y&"
alias upgrade="sudo apt update; sudo apt upgrade -y; sudo apt autoremove -y&"
alias nnao="code"
alias nnap="code"
alias nano="code"
alias nani="code"
alias idea="intellij-idea-community"
alias idea.="intellij-idea-community ."
alias code.="code ."
alias ls="exa -alh --color=auto"
alias ll="exa -alh --color=auto"
alias dd="sudo -k dd status=progress "
alias vmplayer="GTK_CSD=0 vmplayer&"
alias cmd="io.elementary.terminal&"
alias gti="git"
alias gpull="git pull"
alias gpu="git pull"
alias gpush="git push"
alias mspaint="pinta"
alias paint="pinta"
alias cd..="cd .."
alias ..="cd .."
alias ,,="cd .." #fallback when I make a typo on ".." alias
alias mci="mvn clean install -DskipTests=true"
alias mci+="mvm clean install"
alias mcit="mvn clean install"
alias mvndt='mvn dependency:tree | tee dt'
alias pdf=firefox
alias aliases=cat ~/.zshrc
alias zshrc="nano ~/.zshrc"
alias onlineaccounts="Exec=env XDG_CURRENT_DESKTOP=GNOME gnome-control-center –overview"
alias files="io.elementary.files"
alias ga-p="git add -p"
alias sshpasswd="ssh-keygen -p -f ~/.ssh/id_rsa"
alias gconf="git config -e"
alias gmv='git mv'
alias scpid="ssh-copy-id -i ~/.ssh/id_rsa"
alias yrd='yarn run dev'
alias yrb='yarn run build'
alias yi='yarn install'
alias ys='yarn storybook'
alias gitunstage='git reset HEAD'
alias n='nano'
alias n.='nano .'
alias sshcpid='ssh-copy-id'
alias c.='code.'
alias zhist="nano ~/.zsh_history"
alias mvndc="mvn org.owasp:dependency-check-maven:check && mvn dependency:tree | tee d"
alias dkrmf="docker rm --force"
alias dkrmfa="docker rm --force $(docker ps -aq)"
alias dkrmaf="docker rm --force $(docker ps -aq)"
alias dkpaq="docker ps -aq"
alias rkc="kubectl --namespace rook-ceph exec -it $(kubectl --namespace rook-ceph get pod -l 'app=rook-ceph-tools' -o jsonpath='{.items[0].metadata.name}') bash"
alias tma="tmux attach"
alias mcc="mvn clean compile"
alias gconfg="git config --global --edit"
alias dkelastic="docker run --name elastic -p 9200:9200 -p 9300:9300 -e 'discovery.type=single-node' docker.elastic.co/elasticsearch/elasticsearch:7.12.0"
alias dkpgsql="docker run -d --name posttest postgres:alpine -p 5432:5432"
alias dkmongo="docker run -d -p 27017-27019:27017-27019 --name mongodb mongo:4.4"
alias dkrselastic="docker rm --force elastic; docker run --name elastic -p 9200:9200 -p 9300:9300 -e 'discovery.type=single-node' docker.elastic.co/elasticsearch/elasticsearch:7.12.0"
alias dkrspgsql="docker rm --force posttest; docker run -d --name posttest postgres:alpine -p 5432:5432"
alias dkrsmongo="docker rm --force mongodb; docker run -d -p 27017-27019:27017-27019 --name mongodb mongo:4.4"
alias mcc="mvn clean compile"
alias dkrse="docker rm --force elastic; docker run --name elastic -p 9200:9200 -p 9300:9300 -e 'discovery.type=single-node' docker.elastic.co/elasticsearch/elasticsearch:7.12.0"
alias dkrsp="docker rm --force posttest; docker run -d --name posttest postgres:alpine -p 5432:5432"
alias dkrsmo="docker rm --force mongodb; docker run -d -p 27017-27019:27017-27019 --name mongodb mongo:4.4"
alias nxa=="nx run affected:build"
alias nci="npm ci"
alias npmci="npm ci"
alias npmi="npm i"
alias ai="sudo apt install -y "
alias dkreg="docker run -d -p 5000:5000 --restart=always --name registry registry:2"


builtin . /usr/share/io.elementary.terminal/enable-zsh-completion-notifications || builtin true
screenfetch

###### Aliases from https://github.com/sdaschner/dotfiles/.aliases

# unix
alias c='cat'
alias le='less -j4'
alias chex='chmod +x'
alias cpr='cp -r'
alias rr='rm -Rf'
alias mn='mv -vn'
alias txf='tar -xf'
alias v='vim'
alias vi='vim'
alias uz='unzip'
alias uzl='unzip -l'
#alias tree='tree -a -I ".svn|.git|.hg|.idea"'
#alias tree2='tree -L 2'
#alias tree3='tree -L 3'
alias tree='exa -alh -L -I ".svn|.git|.hg|.idea|.mvn"'
alias tree2='exa -alh -L 2 -I ".svn|.git|.hg|.idea|.mvn"'
alias tree3='exa -alh -L 3 -I ".svn|.git|.hg|.idea|.mvn"'
alias fn='find . -name "*'
alias ff='find . -name "*.'
alias h='hash -rf'
alias sz='source ~/.zshrc'
alias hx='hexdump -C'
alias k9='kill -9'
alias k15='kill -15'
alias w1='watch -n 1'
alias rp='realpath'
alias CC='$(fc -l -n -1) | clipcopy'

# desktop
alias xauto='xrandr --auto'

# executables
alias cs='create-script'
alias ij='start-intellij'
alias acd='asciidoctor'
alias ti='timer'
alias tmzs='timezones'
alias dea='direnv allow'
alias dee='direnv edit'
alias curl='curl --silent --show-error'
alias clh='curl localhost:'
alias clh8='curl localhost:8080'
alias clh9='curl localhost:9080'
alias c100='curl 192.168.99.100:'
alias cal='cal -y --monday'

# network
alias wi='sudo wifi-menu'
alias p1='ping 1.1.1.1'
alias p192='ping 192.168.1.1'
alias p8='ping 8.8.8.8'
alias p9='ping 9.9.9.9'

# system
alias tmz='sudo timedatectl set-timezone'

# mvn
alias mvv='mvn -v'
alias mci='mvn clean install'
alias mciT='mvn clean install -DskipTests'
alias mciTT='mvn clean install -Dmaven.test.skip'
alias mcd='mvn clean deploy'
alias mcdT='mvn clean deploy -DskipTests'
alias mcdTT='mvn clean deploy -Dmaven.test.skip'
alias mp='mvn package'
alias mpT='mvn package -DskipTests'
alias mpTT='mvn package -Dmaven.test.skip'
alias mve='mvn verify'
alias mcv='mvn clean verify'
alias mcve='mvn clean verify'
alias mpld='mvn package liberty:dev'
alias mpldT='mvn package liberty:dev -DhotTests'
alias mcpld='mvn clean package liberty:dev'
alias mcpldT='mvn clean package liberty:dev -DhotTests'
alias mld='mvn liberty:dev'
alias mldT='mvn liberty:dev -DhotTests'
alias mcp='mvn clean package'
alias mcpT='mvn clean package -DskipTests'
alias mcpTT='mvn clean package -Dmaven.test.skip'
alias mqd='mvn compile quarkus:dev'
alias mcqd='mvn compile quarkus:dev'
alias mccqd='mvn clean compile quarkus:dev'
alias mit='mvn test-compile failsafe:integration-test failsafe:verify'
alias mc='mvn clean'
alias mct='mvn clean test'
alias mgs='mvn generate-sources'
alias mrr='mvn release:prepare release:perform -DperformRelease=true -DignoreSnapshots=false'
alias mgat='mvn io.gatling:gatling-maven-plugin:execute'

# git
alias gs='git show'
alias gt='git tag'
alias gupd='git update'
alias ggpusht='git push origin $(git_current_branch) --tags'
alias ggpushf='git push origin $(git_current_branch) --force'
alias ggpushtf='git push origin $(git_current_branch) --tags --force'
alias ggpushft='git push origin $(git_current_branch) --tags --force'
alias ggpull='git pull --rebase origin $(git_current_branch)'
alias ggpp='git pull --rebase origin $(git_current_branch) && git push origin $(git_current_branch)'
alias grbum='git rebase upstream/master'
alias gcob='git checkout -b'
alias gco='git checkout'
alias gco-='git checkout -'
alias gbdf='git branch -d --force'
alias gm-='git merge -'
alias gg='git graph'
alias gsts='git stash save'
alias grget='git remote get-url origin'
alias gpr='hub pull-request'
alias gci='hub issue create'
alias hcl='hub clone'

# svn
alias svu='svn update'
alias svs='svn status'
alias svi='svn info'

# docker
alias dk='docker'
alias dkp='docker ps'
alias dkpa='docker ps -a'
alias dkpaq='docker ps -a -q'
alias dkb='docker build -t'
alias dkbnc='docker build --no-cache -t'
alias dkr='docker run --rm'
alias dkrti='docker run --rm -ti'
alias dkrd='docker run -d'
alias dkrp8='docker run --rm -p 8080:8080'
alias dkrp9='docker run --rm -p 9080:9080'
alias dks='docker start'
alias dkt='docker stop'
alias dktt='docker stop $(docker ps -q)'
alias dkk='docker kill'
alias dkkk='docker kill $(docker ps -q)'
alias dkrm='docker rm'
alias dkri='docker rmi'
alias dke='docker exec -ti'
alias dkl='docker logs -f'
alias dki='docker images'
alias dkpu='docker pull'
alias dkph='docker push'
alias dkin='docker inspect'
alias dkn='docker network'
alias dkc='docker-compose'
alias dkcu='docker-compose up'
alias dkclean='docker ps -q -a -f status=exited | xargs -r docker rm && docker images -q -f dangling=true | xargs -r docker rmi'

# kubernetes
alias kc='kubectl'
alias kcg='kubectl get'
alias kcgn='kubectl get --namespace'
alias kcd='kubectl describe'
alias kcdn='kubectl describe --namespace'
alias kcdl='kubectl delete'
alias kcdln='kubectl delete --namespace'
alias kcdlp='kubectl-delete-pod'
alias kcgno='kubectl get nodes'
alias kcgp='kubectl get pods'
alias kcgpn='kubectl get pods --namespace'
alias kcgpp='kubectl get pods --all-namespaces'
alias kcgd='kubectl get deployments'
alias kcgdn='kubectl get deployments --namespace'
alias kcgdd='kubectl get deployments --all-namespaces'
alias kcgs='kubectl get services'
alias kcgsn='kubectl get services --namespace'
alias kcgss='kubectl get services --all-namespaces'
alias kcgi='kubectl get ingresses'
alias kcgin='kubectl get ingresses --namespace'
alias kcgii='kubectl get ingresses --all-namespaces'
alias kcgc='kubectl get configmaps'
alias kcgcn='kubectl get configmaps --namespace'
alias kcgcc='kubectl get configmaps --all-namespaces'
alias kcgv='kubectl get virtualservices'
alias kcgvn='kubectl get virtualservices --namespace'
alias kcgvv='kubectl get virtualservices --all-namespaces'
alias kcgdr='kubectl get destinationrules'
alias kcgdrn='kubectl get destinationrules --namespace'
alias kcgdrr='kubectl get destinationrules --all-namespaces'
alias kcgg='kubectl get gateways'
alias kcggn='kubectl get gateways --namespace'
alias kcggg='kubectl get gateways --all-namespaces'
alias kcgse='kubectl get serviceentries'
alias kcgsen='kubectl get serviceentries --namespace'
alias kcgsee='kubectl get serviceentries --all-namespaces'
alias kcgr='kubectl get routerules'
alias kcgrn='kubectl get routerules --namespace'
alias kcgrr='kubectl get routerules --all-namespaces'
alias kcgdp='kubectl get destinationpolicies'
alias kcgdpn='kubectl get destinationpolicies --namespace'
alias kcgdpp='kubectl get destinationpolicies --all-namespaces'
alias kcge='kubectl get events --sort-by=".lastTimestamp" --all-namespaces --watch'
alias kcc='kubectl create'
alias kccn='kubectl create --namespace'
alias kca='kubectl apply -f'
alias kcan='kubectl apply -f --namespace'
alias kce='kubectl exec -t -i'
alias kcen='kubectl exec -t -i --namespace'
alias kcl='kubectl logs -f'
alias kcll='kubectl-logs'
alias kcln='kubectl logs -f --namespace'
alias kcgx='kubectl config get-contexts'
alias kcux='kubectl config use-context'
alias kcxsn='kubectl config set-context $(kubectl config current-context) --namespace'
alias kcpf='kubectl port-forward'
alias kcpfn='kubectl port-forward --namespace'
alias kcpfg='kubectl-port-forward-grafana'
alias kcpfj='kubectl-port-forward-jaeger'
alias kcpfk='kubectl-port-forward-kiali'
alias kcpfp='kubectl-port-forward-prometheus'
alias kcpfpf='kubectl-port-forward-prometheus-federation'
alias kcpfz='kubectl-port-forward-zipkin'
alias kcdldr='kubectl-delete-default-resources'
alias kcii='kubectl-ingress-ip-address'
alias kcni='kubectl-nginx-ip-address'
alias kcigip='kubectl-istio-gateway-ip-address'
alias kcignp='kubectl-istio-gateway-http-nodeport'

# istio
alias ic='istioctl'
alias icg='istioctl get'
alias icc='istioctl create -f'
alias icr='istioctl replace -f'
alias icdl='istioctl delete'
alias icij='istioctl kube-inject -f'

# minikube
alias mks='minikube start'
alias mkt='minikube stop'

# Jenkins X
alias jxs='jx status'
alias jxgp='jx get pipelines'
alias jxga='jx get activity'
alias jxgaw='jx get activity -w'
alias jxgap='jx get applications'
alias jxgbl='jx get build log'
alias jxgbp='jx get build pod'
alias jxge='jx get environment'
alias jxsp='jx start pipeline'
alias jxc='jx create'
alias jxi='jx install'
alias jxim='jx import'

# global (to be chained with _ -> sudo, or expanded anywhere)

# unix
alias -g md='mkdir -p'
alias -g wh='which'
alias -g wt='while true; do'
alias -g s1='sleep 1'
alias -g s2='sleep 2'
alias -g s01='sleep 0.1'
alias -g s05='sleep 0.5'
alias -g grep='grep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn}'
alias -g A1="| awk '{print \$1}'"
alias -g L='| less'
alias -g H='| head'
alias -g H2='| head -n 20'
alias -g G='| grep'
alias -g Gi='| grep -i'
alias -g GH='| grep HTTP'
alias -g X='| xargs -I1'
alias -g C='| clipcopy'
alias -g Fj='| jq .'
alias -g Fy='| yq .'
alias -g Fx='| xmllint --format -'
alias -g V='| vim -'

# executables
alias -g l='exa -alh --color=auto'

# arguments
alias -g cpjson="-XPOST -H 'Content-Type: application/json' -d '{}'"
alias -g cptext="-XPOST -H 'Content-Type: text/plain' -d"
alias -g On="--output name"
alias -g Oj="--output json"
alias -g Oy="--output yaml"
alias -g Ow="--output wide"
alias -g Ot="--template"

# systemctl
alias -g scl='systemctl'
alias -g sclss='systemctl status'
alias -g scle='systemctl enable'
alias -g scld='systemctl disable'
alias -g sclr='systemctl restart'
alias -g scls='systemctl start'
alias -g sclt='systemctl stop'
alias -g scldr='systemctl daemon-reload'
alias -g jou='sudo journalctl -b -n 200 -f'

# java
alias -g jc='javac'
alias -g jj='java -jar'
alias -g jp='javap -v -l -p -c -s'

# suffix
alias -s {pdf,PDF}='background mupdf'
alias -s {jpg,JPG,png,PNG}='background gpicview'
alias -s {ods,ODS,odt,ODT,odp,ODP,doc,DOC,docx,DOCX,xls,XLS,xlsx,XLSX,xlsm,XLSM,ppt,PPT,pptx,PPTX,csv,CSV}='background libreoffice'
alias -s {html,HTML}='background chromium'
alias -s {mp4,MP4,mov,MOV,mkv,MKV}='background vlc'
alias -s {zip,ZIP,war,WAR}="unzip -l"
alias -s {jar,JAR}="java -jar"
alias -s gz="tar -tf"
alias -s {tgz,TGZ}="tar -tf"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
