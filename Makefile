all: usage

usage:
	@echo "make install PREFIX=/somewhere"
	@echo ""
	@echo "Will install the makefiles, and test tools into $PREFIX/share/netsurf-buildsystem"
	@echo ""
	@echo "Which is where the libraries etc look for it."

PREFIX?=/opt/netsurf

BASE=$(PREFIX)/share/netsurf-buildsystem

MAKEFILES := $(patsubst %,Makefile.%,	\
	top tools subdir pkgconfig 	\
	clang gcc norcroft open64 	\
)

TESTTOOLS := testrunner.pl

install:
	mkdir -p $(BASE)/makefiles $(BASE)/testtools
	for M in $(MAKEFILES); do \
		cp makefiles/$$M $(BASE)/makefiles/; \
	done
	for T in $(TESTTOOLS); do \
		cp testtools/$$T $(BASE)/testtools/; \
	done

