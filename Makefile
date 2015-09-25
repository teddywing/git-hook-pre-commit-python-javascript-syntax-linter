# Copied from Richard Hartmann's vcsh:
# https://github.com/RichiH/vcsh/blob/master/Makefile
test:
	@if which git   > /dev/null; then :    ; else echo "'git' not found, exiting..."         ; exit 1; fi
	@if which prove > /dev/null; then source virtualenv/bin/activate; prove; else echo "'prove' not found; not running tests";         fi
