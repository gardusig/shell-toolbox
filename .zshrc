# ─── Oh-My-Zsh ─────────────────────────────────────────────────
export ZSH="$HOME/.oh-my-zsh"
[[ -s "$ZSH/oh-my-zsh.sh" ]] && source "$ZSH/oh-my-zsh.sh"

# Load only what you need; order matters if you add syntax-highlighting later
plugins=(
    git
    zsh-autosuggestions     # optional – type-ahead suggestions
    zsh-syntax-highlighting # optional – colourise commands (load last)
)

# ─── PATH tweaks ───────────────────────────────────────────────
# Homebrew (macOS /opt/homebrew on Apple Silicon)
if command -v brew >/dev/null; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# VS Code CLI (adds the `code` command)
vscode_bin="/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
[[ -d "$vscode_bin" ]] && path+=("$vscode_bin") # Zsh-friendly way to modify $PATH

# ─── Aliases & misc ───────────────────────────────────────────
alias reload="exec zsh -l" # full reload
