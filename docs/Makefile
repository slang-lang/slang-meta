.PHONY: no_target check clean compile deploy distclean install prepare release update

include config

no_target:

check:

clean:

compile:

deploy:

distclean:

install:

prepare:

release:

update:
	@echo "Updating Docs..."
	@if [ -d .git ]; then \
		git fetch -p && \
		git switch main && \
		git pull; \
	else \
		echo "Docs is not a git repository"; \
	fi
