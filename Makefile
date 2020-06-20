CWD		= $(CURDIR)
MODULE	= $(notdir $(CWD))

NIMBLE	= $(HOME)/.nimble/bin/nimble
PRETTY	= $(HOME)/.nimble/bin/nimpretty

.PHONY: all
all: $(MODULE)

SRC = src/$(MODULE).nim

$(MODULE): $(SRC) $(MODULE).nimble Makefile
	find src -type f -regex .+.nim$$ | xargs -n1 $(PRETTY) --indent:2
	$(NIMBLE) build
