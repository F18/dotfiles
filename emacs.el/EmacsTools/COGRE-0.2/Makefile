# Automatically Generated Makefile by EDE.
# For use with: make
#
# DO NOT MODIFY THIS FILE OR YOUR CHANGES MAY BE LOST.
# EDE is the Emacs Development Environment.
# http://cedet.sourceforge.net/ede.shtml
# 

top=
ede_FILES=Project.ede Makefile

info_TEXINFOS=cogre.texi
MAKEINFO=makeinfo
misc_MISC=INSTALL ChangeLog
hacks_LISP=picture-hack.el
EMACS=emacs
LOADPATH=
COGRE_LISP=cogre.el cogre-uml.el uml-create.el
VERSION=0.2
DISTDIR=$(top)COGRE-$(VERSION)



all: cogre.info misc hacks COGRE

cogre.info: $(info_TEXINFOS)
	$(MAKEINFO) -o $@ $<

misc: 
	@

hacks: $(hacks_LISP)
	@echo "(add-to-list 'load-path nil)" > $@-compile-script
	@if test ! -z "${LOADPATH}" ; then\
	   for loadpath in ${LOADPATH}; do \
	      echo "(add-to-list 'load-path \"$$loadpath\")" >> $@-compile-script; \
	    done;\
	fi
	@echo "(setq debug-on-error t)" >> $@-compile-script
	$(EMACS) -batch -l $@-compile-script -f batch-byte-compile $^

COGRE: $(COGRE_LISP)
	@echo "(add-to-list 'load-path nil)" > $@-compile-script
	@if test ! -z "${LOADPATH}" ; then\
	   for loadpath in ${LOADPATH}; do \
	      echo "(add-to-list 'load-path \"$$loadpath\")" >> $@-compile-script; \
	    done;\
	fi
	@echo "(setq debug-on-error t)" >> $@-compile-script
	$(EMACS) -batch -l $@-compile-script -f batch-byte-compile $^

tags: 

clean:
	rm -f *.elc *.html *.info


dist: cogre.info
	rm -rf $(DISTDIR)
	mkdir $(DISTDIR)
	cp $(info_TEXINFOS) cogre.info* $(misc_MISC) $(hacks_LISP) $(COGRE_LISP) $(ede_FILES) $(DISTDIR)
	tar -cvzf $(DISTDIR).tar.gz $(DISTDIR)
	rm -rf $(DISTDIR)

Makefile: Project.ede
	@echo Makefile is out of date!  It needs to be regenerated by EDE.
	@false



# End of Makefile
