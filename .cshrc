# $FreeBSD: src/share/skel/dot.cshrc,v 1.14 2007/05/29 22:07:57 dougb Exp $
#
# .cshrc - csh resource script, read at beginning of execution by each shell
#
# see also csh(1), environ(7).
#

alias h		history 25
alias j		jobs -l
alias la	ls -a
alias lf	ls -FA
alias ll	ls -lA
alias r		rails
alias vi	vim

# A righteous umask
umask 22

set path = (/sbin /bin /usr/sbin /usr/bin /usr/games /usr/local/sbin /usr/local/bin $HOME/bin)

setenv	EDITOR	vi
setenv  VISUAL	${EDITOR}
setenv  EXINIT	'set autoindent'
#setenv  PAGER	lv
setenv	BLOCKSIZE	K
setenv LC_CTYPE ja_JP.UTF-8
setenv LANG     ja_JP.UTF-8

# setting when shell is tcsh. (ref. Tettei Nyuumon 2.2.1-R ed p171)
if ($?tcsh) then
        alias ls ls-F
        bindkey ^R i-search-back
	set nobeep
endif

if ($?prompt) then
	# An interactive shell -- set some stuff up
	set filec
	set history = 100
	set savehist = 100
	set mail = (/var/mail/$USER)

	# Set prompt (ref. BSD Hacks; Hack #2; p.6)
	if (`/usr/bin/id -u` == 0) then
		set prompt = "[%m:%~]# "
	else
		set prompt = "[%n@%m:%~]%% "
	endif

	if ( $?tcsh ) then
		bindkey "^W" backward-delete-word
		bindkey -k up history-search-backward
		bindkey -k down history-search-forward
	endif
endif

# prevent to write coredump files
limit coredumpsize 0
