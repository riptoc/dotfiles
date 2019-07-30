# A modified robbyrussell oh-my-zsh theme to include a fish style wd,
# stolen from fishy theme included with oh-my-zsh.
# Prompt slightly reconfigured too

# Originals by robbyrussell
# https://github.com/robbyrussell/oh-my-zsh


_fishy_collapsed_wd() { # Fish style wd, from fishy theme.
  echo $(pwd | perl -pe '
   BEGIN {
      binmode STDIN,  ":encoding(UTF-8)";
      binmode STDOUT, ":encoding(UTF-8)";
   }; s|^$ENV{HOME}|~|g; s|/([^/.])[^/]*(?=/)|/$1|g; s|/\.([^/])[^/]*(?=/)|/.$1|g
')
}

local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
# Prompt modified from robbyrussell and including fishy wd
PROMPT='  %{$fg[cyan]%}$(_fishy_collapsed_wd) $(git_prompt_info)
${ret_status}%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
