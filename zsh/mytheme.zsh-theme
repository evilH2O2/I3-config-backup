# local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
# RPROMPT='${ret_status} %{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)'

local prefix='%{$fg_bold[red]%}%n%{$fg[green]%}@%{$fg_bold[magenta]%}%M %{$reset_color%}' 
local suffix='%{$fg[white]%}->%{$fg[magenta]%}%# %{$reset_color%}'
# %1~ 进当前文件名
local dir='%{$terminfo[bold]$fg[blue]%}%1~ %{$reset_color%}'
local git_branch='$(git_prompt_info)'

# 加粗后颜色正确显示
# PROMPT='%{$fg_bold[red]%}%n%{$fg[green]%}@%{$fg_bold[magenta]%}%M %{$reset_color%}%{$fg[blue]%}%~%{$reset_color%} $(git_prompt_info) %{$fg[white]%}->%{$fg[magenta]%}%# %{$reset_color%}'

PROMPT="${prefix}${dir}${git_branch}${suffix}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

