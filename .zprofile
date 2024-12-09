eval "$(/opt/homebrew/bin/brew shellenv)"

source /opt/homebrew/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme

# path
export JAVA_HOME=$(/usr/libexec/java_home -v 22.0.2)
export PATH=$JAVA_HOME/bin:$PATH
export PATH="/opt/homebrew/opt/postgresql@16/bin:$PATH"
export PATH="$PATH:/Users/furkanemiroglu/Library/Application Support/JetBrains/Toolbox/scripts"

set relativenumber

p() {
	cd ~/Projects
}

b() {
	cd ~/Builds
}

h() {
	cd ~/
}

alias lg=lazygit
alias vim=nvim
