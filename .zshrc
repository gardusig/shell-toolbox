# ─── Oh-My-Zsh ─────────────────────────────────────────────────
export ZSH="$HOME/.oh-my-zsh"
[[ -s "$ZSH/oh-my-zsh.sh" ]] && source "$ZSH/oh-my-zsh.sh"

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

alias list-python='find . \( \
  -name "__pycache__" -o \
  -name ".pytest_cache" -o \
  -name ".mypy_cache" -o \
  -name ".venv" -o \
  -name "venv" -o \
  -name ".git" -o \
  -name ".vscode" -o \
  -name "*.egg-info" -o \
  -name "build" -o \
  -name "dist" \
\) -prune -o -print'
