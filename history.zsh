#!/usr/bin/env zsh

# see 2.5.5: History options in http://zsh.sourceforge.net/Guide/zshguide02.html
# and 16.2.4 History in http://zsh.sourceforge.net/Doc/Release/Options.html

# save history
[ -z "$HISTFILE" ] && HISTFILE=${ZDOTDIR:-$HOME}/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

setopt EXTENDED_HISTORY             # record ':start:elapsed;command' in history file
setopt HIST_FIND_NO_DUPS            # don't show duplicates when searching history
setopt HIST_IGNORE_ALL_DUPS         # don't write duplicates to the history file (drops the older event)
setopt HIST_IGNORE_SPACE            # ignore commands that start with space
setopt SHARE_HISTORY                # share history across all zsh sessions
