###############################################
#           build options                     #
###############################################
#
# Created by Rumbler S. <rumbler.soppa@gmail.com>
# Date: seg mar  4 14:49:26 -04 2019
#
####### Building install-mazon support ########
#
# 
# (COMP_DEFAULT) is install-mazon.
#
#

SHELL=/bin/bash
DESTDIR=
BINDIR=${DESTDIR}
INFODIR=${DESTDIR}/share/info
MODE=775
DIRMODE=755

.PHONY: build

install:
	mkdir -p ${BINDIR}/sbin
	install -m ${MODE} src/install-mazon.sh ${BINDIR}/sbin/install-mazon
	mkdir -p ${INFODIR}
	cp ChangeLog INSTALL LICENSE MAINTAINERS README.md ${INFODIR}/
	@echo "Software was installed in ${BINDIR}"

uninstall:
	rm ${BINDIR}/install-mazon
	@echo "Software was removed."


