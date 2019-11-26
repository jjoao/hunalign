## FIXME: not ready
SHELL=bash
BIN=/usr/local/bin

install:
	cd src/hunalign; make
#	cp ...  $(BIN)/

test:
	src/hunalign/hunalign data/hu-en.stem.dic examples/demo.hu.stem examples/demo.en.stem \
       -hand=examples/demo.manual.ladder -text > /tmp/align.txt
	head /tmp/align.txt

test2:
	src/hunalign/hunalign data/hu-en.stem.dic examples/hu.raw  examples/en.raw \
       -hand=examples/demo.manual.ladder -text > /tmp/align.txt
	head /tmp/align.txt
