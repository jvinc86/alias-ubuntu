#!/bin/bash
# CREACION DE ALIAS

# OJO SELECCIONAR SHELL:  bashrc  o  zshrc
el_shell=zshrc

echo -e "\n#ALIAS NECESARIOS" | sudo tee -a ~/.$el_shell
# echo "alias cna='rm -rf alias.sh && touch alias.sh && chmod +x alias.sh && vim alias.sh'" | sudo tee -a ~/.$el_shell
echo "alias cnz='rm -rf ~/.zshrc && cp ~/.zshrc-backup ~/.zshrc && source /home/vcamacho/ps/alias-ubuntu/alias.sh'" | sudo tee -a ~/.$el_shell
echo "alias bsh='sudo cat ~/.bashrc'" | sudo tee -a ~/.$el_shell
echo "alias zsh='sudo cat ~/.zshrc'" | sudo tee -a ~/.$el_shell
echo "alias ssha='eval \$(ssh-agent) && ssh-add'" | sudo tee -a ~/.$el_shell
echo "alias fb='eval \$(ssh-agent) && ssh-add && ssh fac-bastion'" | sudo tee -a ~/.$el_shell
# echo "alias cns='echo \"#!/bin/bash\" >> script.sh && chmod +x script.sh && vim script.sh'" | sudo tee -a ~/.$el_shell
echo "alias cns='echo -e \"#!/bin/bash\n\" >> script.sh && chmod +x script.sh && vim script.sh'" | sudo tee -a ~/.$el_shell


# Basicos
echo -e "\n#ALIAS BASICOS" | sudo tee -a ~/.$el_shell
echo "alias c='cat'" | sudo tee -a ~/.$el_shell
echo "alias sc='sudo cat'" | sudo tee -a ~/.$el_shell
echo "alias t='touch'" | sudo tee -a ~/.$el_shell
echo "alias st='sudo touch'" | sudo tee -a ~/.$el_shell
echo "alias md='mkdir'" | sudo tee -a ~/.$el_shell
echo "alias smd='sudo mkdir'" | sudo tee -a ~/.$el_shell
echo "alias rrf='sudo rm -rf'" | sudo tee -a ~/.$el_shell
echo "alias nt='sudo netstat -tulpn'" | sudo tee -a ~/.$el_shell
echo "alias hs='history'" | sudo tee -a ~/.$el_shell
echo "alias hm='cd ~'" | sudo tee -a ~/.$el_shell
echo "alias l1='ls -la'" | sudo tee -a ~/.$el_shell
echo "alias scts='sudo systemctl status'" | sudo tee -a ~/.$el_shell
echo "alias scte='sudo systemctl start'" | sudo tee -a ~/.$el_shell
echo "alias scta='sudo systemctl stop'" | sudo tee -a ~/.$el_shell
echo "alias sctr='sudo systemctl restart'" | sudo tee -a ~/.$el_shell
echo "alias pw='sudo cat /etc/passwd'" | sudo tee -a ~/.$el_shell
echo "alias sdr='sudo cat /etc/sudoers'" | sudo tee -a ~/.$el_shell
echo "alias sdr90='sudo cat /etc/sudoers.d/90-cloud-init-users'" | sudo tee -a ~/.$el_shell
echo "alias fws='sudo ufw status'" | sudo tee -a ~/.$el_shell
echo "alias ain='sudo apt install'" | sudo tee -a ~/.$el_shell
echo "alias aup='sudo apt update -y'" | sudo tee -a ~/.$el_shell
echo "alias aug='sudo apt update -y && sudo apt upgrade -y'" | sudo tee -a ~/.$el_shell
echo "alias lnvr='lsb_release -a'" | sudo tee -a ~/.$el_shell

#Sshd
echo -e "\n#ALIAS SSHD" | sudo tee -a ~/.$el_shell
echo "alias sshd='sudo cat /etc/ssh/sshd_config'" | sudo tee -a ~/.$el_shell
echo "alias sshda='cat /etc/ssh/sshd_config | grep 'PubkeyAuthentication\|PasswordAuthentication\|PermitRootLogin\|PermitEmptyPasswords''" | sudo tee -a ~/.$el_shell

# Sistema
echo -e "\n#ALIAS SISTEMA" | sudo tee -a ~/.$el_shell
echo "alias vmmc='sudo sysctl vm.max_map_count'" | sudo tee -a ~/.$el_shell
echo "alias ffm='sudo sysctl fs.file-max'" | sudo tee -a ~/.$el_shell

# Git
echo -e "\n#ALIAS GIT" | sudo tee -a ~/.$el_shell
echo "alias gst='git status'" | sudo tee -a ~/.$el_shell
echo "alias gad='git add'" | sudo tee -a ~/.$el_shell
echo "alias gaa='git add .'" | sudo tee -a ~/.$el_shell
echo "alias gcm='git commit -m'" | sudo tee -a ~/.$el_shell
echo "alias gph='git push -u origin'" | sudo tee -a ~/.$el_shell
echo "alias gck='git checkout'" | sudo tee -a ~/.$el_shell
echo "alias gpl='git pull'" | sudo tee -a ~/.$el_shell
echo "alias gacp='git add . && git commit -m 'New changes' && git push'" | sudo tee -a ~/.$el_shell

# Tmux
echo -e "\n#ALIAS TMUX" | sudo tee -a ~/.$el_shell
echo "alias tml='tmux ls'" | sudo tee -a ~/.$el_shell
echo "alias tma='tmux attach -t'" | sudo tee -a ~/.$el_shell
echo "alias tmr='tmux rename-session -t'" | sudo tee -a ~/.$el_shell
echo "alias tmn='tmux new -s'" | sudo tee -a ~/.$el_shell
echo "alias tmk='tmux kill-session -t'" | sudo tee -a ~/.$el_shell

# IDN
echo -e "\n#ALIAS IDN" | sudo tee -a ~/.$el_shell
echo 'alias tprx="curl -k -x "http://proxy.dev.idnomic.com:3128" -L "https://www.amazon.com""' | sudo tee -a ~/.$el_shell
echo 'alias proxyon="export http_proxy="http://proxy.dev.idnomic.com:3128";export https_proxy="http://proxy.dev.idnomic.com:3128""' | sudo tee -a ~/.$el_shell
echo 'alias proxyoff="unset http_proxy;unset https_proxy"' | sudo tee -a ~/.$el_shell


# Docker
echo -e "\n#ALIAS DOCKER" | sudo tee -a ~/.$el_shell
echo "alias d='docker'" | sudo tee -a ~/.$el_shell
echo "alias dp='docker ps'" | sudo tee -a ~/.$el_shell
echo "alias dpa='docker ps -a'" | sudo tee -a ~/.$el_shell
echo "alias di='docker images'" | sudo tee -a ~/.$el_shell
echo "alias ds='docker stop'" | sudo tee -a ~/.$el_shell
echo "alias drm='docker rm -f'" | sudo tee -a ~/.$el_shell
echo "alias dka='docker rm \$(docker stop \$(docker ps -aq))'" | sudo tee -a ~/.$el_shell
echo "alias dki='docker rmi -f \$(docker images -aq)'" | sudo tee -a ~/.$el_shell
echo "alias drd='docker run -d'" | sudo tee -a ~/.$el_shell
echo "alias drd='docker run'" | sudo tee -a ~/.$el_shell
