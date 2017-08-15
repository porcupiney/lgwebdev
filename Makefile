
TP=tpage
#ODIR=/home/davea/W/lesgranges.mulgan.net
ODIR=localsite
INFILES = index info

.PHONY:	usage

usage:
	@echo "LG Web makefile"

%.html:
	tpage $* > $(ODIR)/$*.html

default:	site

site:	index.html info.html pictures.html projects.html calendar.html contact.html

#index.html:	index
#	$(TP) index > $(ODIR)/index.html

#info.html:	index
#	$(TP) info > $(ODIR)/info.html

clean:
	RM $(ODIR)/*.html

