# --- Standard Navigation ---
alias ..="cd .."
alias ...="cd ../.."
alias ls="ls --color=auto"
alias ll="ls -lha --color=auto"
alias conf="cd ~/.config"

# --- Atomic OS Commands ---
alias os-update="rpm-ostree upgrade"
alias os-status="rpm-ostree status"
alias os-apply="rpm-ostree apply-live" # Applies non-kernel updates without a reboot

# --- Flatpak Management ---
alias fp="flatpak"
alias fp-update="flatpak update -y"
alias fp-list="flatpak list"

# --- App Quick-Launchers ---
# Since you use Zed via Flatpak, this lets you type 'zed filename.txt' in the terminal
alias zed="flatpak run dev.zed.Zed"
alias zen="flatpak run app.zen_browser.zen"

# --- Power Commands ---
alias reboot="systemctl reboot" 
alias poweroff="systemctl poweroff" 
alias sleep="systemctl suspend" 
alias hibernate="systemctl hibernate" 

# --- Git Shortcuts ---
alias gs="git status"
alias ga="git add ."
alias gc="git commit -m"
alias gp="git push"

# --- Zsh Plugins (must run before Starship) ---
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# --- Initialize Starship Prompt ---
eval "$(starship init zsh)"
