# warhead theme for oh-my-zsh

if [ $UID -eq 0 ]; then 
	BCOLOR=$fg_bold[red]
	PCOLOR=$fg_bold[yellow]
else 
	BCOLOR=$fg_bold[blue]
	PCOLOR=$fg[green]
fi


ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[magenta]%}[%{$fg[green]%}git%{$fg[yellow]%}:%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[magenta]%}]"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[red]%}+%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

PROMPT='%{$fg_bold[red]%}%(?..%?%1v )%{$fg_bold[white]%}%m %{$BCOLOR%}[%{$reset_color%}%{$PCOLOR%}%~%{$BCOLOR%}] %{$BCOLOR%}%# %{$reset_color%}'
RPROMPT='$(git_prompt_info)%{$reset_color%}'
