#!/usr/bin/env bash
set -euo pipefail

# Target: bash
BASHRC="${HOME}/.bashrc"
BACKUP="${HOME}/.bashrc.alias_backup.$(date +%Y%m%d-%H%M%S)"

# Backup .bashrc
cp -f "$BASHRC" "$BACKUP" 2>/dev/null || true

# Comment out existing alias lines in .bashrc (keep a sed backup too)
sed -i.bak 's/^[[:space:]]*alias[[:space:]]/#&/' "$BASHRC"

{
  echo
  echo "# ===== aliases (added by alias script) ====="
  echo "alias bypass='oobe\\BypassNRO'"

  # custom alias
  echo "alias getweb='wget --mirror --convert-links --adjust-extension --page-requisites --no-parent'"
  echo "alias mapat='telnet mapscii.me'"
  echo "alias NE='2>/dev/null'"
  echo "alias cat='/bin/bat --paging=never --pager=none --style=plain -l rb'"
  echo "alias ls='ls --color'"
  echo "alias v='nvim'"
  echo "alias fd='fdfind'"

  # youtube
  echo "alias youdown='yt-dlp -S res,ext:mp4:m4a'"

  # ufw
  echo "alias ufws='sudo ufw status'"
  echo "alias ufwe='sudo ufw enable'"
  echo "alias ufwa='sudo ufw allow'"
  echo "alias ufwr='sudo ufw reload'"
  echo "alias ufwn='sudo ufw status numbered'"

  # zsh-only installers (kept as aliases; harmless in bash)
  echo "alias c1='git clone https://github.com/romkatv/powerlevel10k.git \$ZSH_CUSTOM/themes/powerlevel10k'"
  echo "alias c2='sed -i \"s/ZSH_THEME=\\\"robbyrussell\\\"/ZSH_THEME=\\\"powerlevel10k\\/powerlevel10k\\\"/\" ~/.zshrc'"
  echo "alias c3='sed -i \"s/plugins=(git)/plugins=(git zsh-autosuggestions zsh-syntax-highlighting sudo)/\" ~/.zshrc'"
  echo "alias c4='git clone https://github.com/zsh-users/zsh-autosuggestions \${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions'"
  echo "alias c5='git clone https://github.com/zsh-users/zsh-syntax-highlighting.git \${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting'"

  # distrobox
  echo "alias dise='distrobox enter '"
  echo "alias disr='distrobox rm '"

  echo "alias lst='ls -ltrh'"

  # fail2ban
  echo "alias rs2='sudo nano /etc/rsyslog.conf'"
  echo "alias f2mod='sudo nano /etc/fail2ban/jail.local'"
  echo "alias f2r='sudo systemctl restart fail2ban'"
  echo "alias f2s='sudo systemctl status fail2ban'"

  # apt + bashrc helpers
  echo "alias i='sudo apt install'"
  echo "alias bas='nano ~/.bashrc'"
  echo "alias basrc='source ~/.bashrc'"

  echo "alias folder='cd /home/natasha/MaquinasHTB/'"
  echo "alias apu='sudo apt update && sudo apt upgrade'"
  echo "alias pg='ping 8.8.8.8 -c4'"
  echo "alias pg1='ping 1.1.1.1 -c4'"
  echo "alias kittyconf='nano ~/.config/kitty/kitty.conf'"

  # fixed quoting
  echo "alias acceder='echo \"marca de la lavadora mayusculas y segundo renglon la letra c mas mi numero\"'"

  echo "alias sshk='kitty +kitten ssh '"
  echo "alias sssh='ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no '"
  echo "alias scpp='scp -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no '"

  echo "alias lockf='i3lock-fancy '"
  echo "alias ansipl='ansible-playbook -i /home/natasha/.ssh/ansible_hosts '"

  echo "alias tailscaleinst='curl -fsSL https://tailscale.com/install.sh | sh'"
  echo "alias tails='sudo tailscale status'"
  echo "alias tailip='sudo tailscale ip'"
  echo "alias vm-to='sudo apt install -y --reinstall open-vm-tools-desktop'"

  echo "alias pantalla='nano ~/.config/bspwm/bspwmrc'"
  echo "alias notas='ranger \$HOME/notas'"
  echo "alias apagar='sudo shutdown -h now'"
  echo "alias bateria-f='upower -i /org/freedesktop/UPower/devices/battery_BAT0'"

  # bash-safe function wrapper
  echo "alias g4rji='f(){ git clone --depth 1 https://github.com/4rji/4rji.git && cd 4rji/; unset -f f; }; f'"

  echo "alias dormir='systemctl suspend'"
  echo "alias pantallin='xrandr --output DP-1 --rotate left --auto --left-of eDP-1'"

  echo "alias vmware-tools='sudo apt install -y --reinstall open-vm-tools-desktop fuse3'"
  echo "alias wse='wormhole send '"
  echo "alias wre='wormhole receive '"

  echo "alias target1.1='cp ~/.config/bin/bateria_backup.sh ~/.config/bin/bateria.sh '"

  echo "alias sse='sudo nano /etc/ssh/sshd_config'"
  echo "alias ssr='sudo systemctl restart ssh'"
  echo "alias sst='sudo systemctl stop ssh'"

  echo "alias blue='sudo systemctl start bluetooth.service'"
  echo "alias 4rj='cd \$HOME/GitHub/bina/binarios'"

  # fixed quoting
  echo "alias lastc='history -r | head -n 1 | awk \"{\\\$1=\\\"\\\"; print \\\$0}\" | xclip -selection clipboard'"

  echo "alias nodormir='sudo systemctl mask sleep.target suspend.target hibernate.target hybrid-sleep.target'"
  echo "alias matavpn='sudo killall openvpn'"

  echo "alias osr='cat /etc/os-release'"
  echo "alias chator='onionshare-cli --chat --public -v'"

  echo "alias trr='trash '"
  echo "alias trl='trash-list '"
  echo "alias tre='trash-empty '"
  echo "alias weather='curl wttr.in '"

  echo "alias readme='cat /opt/4rji/bin/README.md'"
  echo "alias na='nano '"

  echo "alias exitt='exiftool -all= -overwrite_original /Users/ozono/Dropbox/documentation/img/*'"
  echo "alias bye='pkill -KILL -u \$(whoami)'"
  echo "alias byeh='hyprctl dispatch exit'"

  echo "alias portfake='portspoof -c /etc/portspoof/portspoof.conf -s /etc/portspoof/portspoof_signatures'"
  echo "alias flushtables='sudo iptables -t nat -F'"

  echo "alias tamano='du -sh '"
  echo "alias archivserv='cd ~/archivebox && docker-compose up'"

  echo "alias verlos='fzf --preview=\"cat {}\"'"
  echo "alias pega='xclip -sel clip -o'"
  echo "alias pegam='pbpaste'"
  echo "alias copia='xclip -sel clip'"
  echo "alias libreshm='sudo rm -rf /dev/shm/*'"

  # nix
  echo "alias nflutter='nix develop /etc/nixos#flutter --command bash'"
  echo "alias nixe='sudo nano /etc/nixos/paquetes.nix'"
  echo "alias nixg='nix-collect-garbage -d'"
  echo "alias nixee='sudo nano /etc/nixos/configuration.nix'"
  echo "alias nixr='sudo nixos-rebuild switch'"

  # wsl/kali + misc
  echo "alias kplas='kex --esm --wtstart --desktop plasma'"
  echo "alias barrer='flatpak run com.github.debauchee.barrier --config /home/nala/.config/barrier.conf & disown'"
  echo "alias interf='sudo nano /etc/network/interfaces'"
  echo "alias tr1='traceroute 1.1.1.1'"
  echo "alias trg='traceroute 8.8.8.8'"
  echo "alias cdd='cd \${_%/*}'"

  echo "alias shadowcurl='curl --socks5 127.0.0.1:1080 https://ifconfig.me'"
  echo "# ===== end aliases ====="
  echo
} >> "$BASHRC"

echo "Backed up: $BACKUP"
echo "Updated:  $BASHRC"
echo
echo "Reload your shell to apply, or run:"
echo "  source ~/.bashrc"
