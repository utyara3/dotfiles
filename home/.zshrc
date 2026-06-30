if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

alias ssrpg='cd /home/utyara3/.local/share/Steam/steamapps/common/Stone\ Story\ RPG/Martian\ Rex,\ Inc_/Stone\ Story/76561198016524242/Stonescript/utyara3'
alias vact='source .venv/bin/activate'
alias breload='sudo systemctl restart bluetooth'
alias updg='sudo pacman -Syu'
alias zapret_youtube='sudo ~/zapret-discord-youtube-linux/main_script.sh'
alias hc='sudo ~/.scripts/headphones_connect.sh'
alias hd='bluetoothctl disconnect'
alias clock='tty-clock -c -s -b -C 5'
alias clc="fc -ln -1 | wl-copy"
alias hist="history -i | grep $(date +%F)"
alias notes="nvim ~/Documents/helper/"
# Happ Proxy
alias vpn-on='export http_proxy=http://127.0.0.1:10809 https_proxy=http://127.0.0.1:10809 all_proxy=socks5://127.0.0.1:10808'
alias vpn-off='unset http_proxy https_proxy all_proxy'

bindkey '^H' backward-kill-word

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
    git
    zsh-syntax-highlighting
    zsh-autosuggestions      # Автодополнение из истории (серым текстом)
    zsh-completions          # Дополнительные автодополнения
    sudo                     # Двойное нажатие Esc добавляет sudo
    extract                  # Распаковка архивов одной командой
    history                  # Улучшенная работа с историей
)
source $ZSH/oh-my-zsh.sh

# History configuration
HISTFILE=~/.zsh_history
HISTSIZE=50000
SAVEHIST=50000

# History options
setopt SHARE_HISTORY          # История доступна во всех терминалах
setopt HIST_IGNORE_DUPS       # Не дублировать команды
setopt HIST_IGNORE_SPACE      # Игнорировать команды с пробелом в начале
setopt HIST_REDUCE_BLANKS     # Убирать лишние пробелы
setopt APPEND_HISTORY         # Добавлять, а не перезаписывать
setopt INC_APPEND_HISTORY     # Сразу записывать в файл
setopt EXTENDED_HISTORY       # Сохранять время выполнения команды

alias ls='eza --icons --group-directories-first --git'
alias ll='eza --long --icons --group-directories-first --git'
alias la='eza --all --icons --group-directories-first --git'
alias tree='eza --tree --icons --group-directories-first --git'

export EDITOR='nvim'
export VISUAL='nvim'
export LANG=ru_RU.UTF-8
export LC_ALL=ru_RU.UTF-8

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export PATH="$HOME/.local/bin:$PATH"
eval "$(uvx --generate-shell-completion zsh)"
