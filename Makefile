DOCS=index

HDOCS=$(addsuffix .html, $(DOCS))
PHDOCS=$(addprefix html/, $(HDOCS))

.PHONY : docs
docs : $(PHDOCS)

html/%.html : %.jemdoc MENU
	python2.7 jemdoc.py -c myconf.conf -o $@ $<

.PHONY : clean
clean :
	-rm -f html/*.html
