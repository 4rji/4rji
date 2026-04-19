#!/usr/bin/env bash
set -euo pipefail

ZSHRC="${HOME}/.zshrc"
BACKUP="${HOME}/.zshrc.alias_backup.$(date +%Y%m%d-%H%M%S)"

# 1) Backup
cp -a "$ZSHRC" "$BACKUP"

# 2) Comentar aliases existentes (solo líneas que empiezan con "alias ")
# macOS: sed -i '' ...
# Linux: sed -i ...
if sed --version >/dev/null 2>&1; then
  sed -i.bak -E 's/^alias[[:space:]]+/#&/' "$ZSHRC"
else
  sed -i '' -E 's/^alias[[:space:]]+/#&/' "$ZSHRC"
fi

# 3) Agregar tus aliases como bloque (sin pelearte con comillas)
cat >> "$ZSHRC" <<'EOF'

# ==== custom aliases (managed block) ====
alias bypass='oobe\BypassNRO'
alias getweb='wget --mirror --convert-links --adjust-extension --page-requisites --no-parent'
alias mapat='telnet mapscii.me'
alias NE='2>/dev/null'
alias cat='/bin/bat --paging=never --pager=none --style=plain -l rb'
alias ls='ls --color'
alias v='nvim'
alias fd='fdfind'

# youtube
alias youdown='yt-dlp -S res,ext:mp4:m4a'

# ufw
alias ufws='sudo ufw status'
alias ufwe='sudo ufw enable'
alias ufwa='sudo ufw allow'
alias ufwr='sudo ufw reload'
alias ufwn='sudo ufw status numbered'

# zsh/oh-my-zsh helpers
alias c1='git clone https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k'
alias c2='sed -i "s/ZSH_THEME=\"robbyrussell\"/ZSH_THEME=\"powerlevel10k\/powerlevel10k\"/" ~/.zshrc'
alias c3='sed -i "s/plugins=(git)/plugins=(git zsh-autosuggestions zsh-syntax-highlighting sudo)/" ~/.zshrc'
alias c4='git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions'
alias c5='git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting'

# distrobox
alias dise='distrobox enter'
alias disr='distrobox rm'

alias lst='ls -ltrh'


# fail2ban
alias rs2='sudo nano /etc/rsyslog.conf'
alias f2mod='sudo nano /etc/fail2ban/jail.local'
alias f2r='sudo systemctl restart fail2ban'
alias f2s='sudo systemctl status fail2ban'

# apt
alias i='sudo apt install'
alias apu='sudo apt update && sudo apt upgrade'
alias bas='nano ~/.zshrc'
alias basrc='source ~/.zshrc'

alias folder='cd /home/natasha/MaquinasHTB/'

# ping minimal output
alias pg="ping -c2 8.8.8.8 | sed -n '2p' && ping -c1 google.com | sed -n '1p'"
alias pg1='ping 1.1.1.1 -c4'

alias kittyconf='nano ~/.config/kitty/kitty.conf'

# ssh/scp relaxed
alias sshk='kitty +kitten ssh'
alias sssh='ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no'
alias scpp='scp -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no'

alias lockf='i3lock-fancy'
alias ansipl='ansible-playbook -i /home/natasha/.ssh/ansible_hosts'

alias tailscaleinst='curl -fsSL https://tailscale.com/install.sh | sh'
alias tails='sudo tailscale status'
alias tailip='sudo tailscale ip'

alias pantalla='nano ~/.config/bspwm/bspwmrc'
alias notas='ranger $HOME/notas'

alias apagar='sudo shutdown -h now'
alias bateria-f='upower -i /org/freedesktop/UPower/devices/battery_BAT0'

alias dormir='sudo systemctl suspend'
alias nodormir='sudo systemctl mask sleep.target suspend.target hibernate.target hybrid-sleep.target'

alias matavpn='sudo killall openvpn'

alias osr='cat /etc/os-release'
alias trr='trash'
alias trl='trash-list'
alias tre='trash-empty'
alias weather='curl wttr.in'
alias readme='cat /opt/4rji/bin/README.md'
alias na='nano'
alias 4rj='cd ~/github/bina/binarios/'
alias byeh='hyprctl dispatch exit'

alias portfake='portspoof -c /etc/portspoof/portspoof.conf -s /etc/portspoof/portspoof_signatures'
alias flushtables='sudo iptables -t nat -F'

alias tamano='du -sh'
alias pega='xclip -sel clip -o'
alias copia='xclip -sel clip'

alias libreshm='sudo rm -rf /dev/shm/*'

alias tr1='traceroute 1.1.1.1'
alias trg='traceroute 8.8.8.8'

alias shadowcurl='curl --socks5 127.0.0.1:1080 https://ifconfig.me'
# ==== end managed block ====

EOF

echo "OK: backup -> $BACKUP"
echo "Reload: source ~/.zshrc"
