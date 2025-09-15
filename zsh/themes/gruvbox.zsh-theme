# Gruvbox ZSH Theme
# Optimized for Gruvbox color scheme
# Colors match Gruvbox palette for consistency

# Gruvbox colors (using terminal color codes that match Gruvbox palette)
local gruvbox_bg="%{$fg[black]%}"          # bg0
local gruvbox_fg="%{$fg[white]%}"          # fg0
local gruvbox_red="%{$fg[red]%}"           # red
local gruvbox_green="%{$fg[green]%}"       # green
local gruvbox_yellow="%{$fg[yellow]%}"     # yellow
local gruvbox_blue="%{$fg[blue]%}"         # blue
local gruvbox_purple="%{$fg[magenta]%}"    # purple
local gruvbox_aqua="%{$fg[cyan]%}"         # aqua
local gruvbox_orange="%{$fg_bold[red]%}"   # orange (bold red)
local gruvbox_gray="%{$fg_bold[black]%}"   # gray

# Git prompt configuration
ZSH_THEME_GIT_PROMPT_PREFIX=" ${gruvbox_aqua}git:${gruvbox_yellow}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="${gruvbox_red} ✗"
ZSH_THEME_GIT_PROMPT_CLEAN="${gruvbox_green} ✓"

# Virtualenv prompt removed

# Exit code display
local exit_code="%(?,,${gruvbox_red}[%?]%{$reset_color%} )"

# Main prompt
# Format: dir git:branch ✓ [exit_code]
# ❯
PROMPT='${gruvbox_yellow}%c%{$reset_color%}$(git_prompt_info) ${exit_code}
%(?:${gruvbox_green}❯:${gruvbox_red}❯)%{$reset_color%} '

# Right prompt with timestamp
RPROMPT='${gruvbox_gray}%*%{$reset_color%}'