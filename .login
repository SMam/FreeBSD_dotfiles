# $FreeBSD: src/share/skel/dot.login,v 1.16 2001/06/25 20:40:02 nik Exp $
#
# .login - csh login script, read by login shell, after `.cshrc' at login.
#
# see also csh(1), environ(7).
#

setenv LC_CTYPE	ja_JP.UTF-8
setenv LANG	ja_JP.UTF-8

[ -x /usr/games/fortune ] && /usr/games/fortune freebsd-tips

sleep 3
startx
