.PHONY: no_target check clean compile deploy distclean install prepare release update

# Define all extension subdirectories
SUBDIRS := extApache extBase64 extCurl extJson extMQ extMariaDB extMySQL extPipe extSQLite3

include config

no_target: compile

prepare:
	@for dir in $(SUBDIRS); do \
		echo "Preparing $$dir..."; \
		$(MAKE) -C $$dir prepare || exit 1; \
	done

compile:
	@for dir in $(SUBDIRS); do \
		echo "Compiling $$dir..."; \
		$(MAKE) -C $$dir compile || exit 1; \
	done

deploy:
	@for dir in $(SUBDIRS); do \
		echo "Deploying $$dir..."; \
		$(MAKE) -C $$dir deploy || exit 1; \
	done

check:
	@for dir in $(SUBDIRS); do \
		echo "Checking $$dir..."; \
		$(MAKE) -C $$dir check || exit 1; \
	done

clean:
	@for dir in $(SUBDIRS); do \
		echo "Cleaning $$dir..."; \
		$(MAKE) -C $$dir clean || exit 1; \
	done

distclean:
	@for dir in $(SUBDIRS); do \
		echo "Dist-cleaning $$dir..."; \
		$(MAKE) -C $$dir distclean || exit 1; \
	done

install: prepare compile deploy

release: prepare install

update:
	@for dir in $(SUBDIRS); do \
		echo "Updating $$dir..."; \
		$(MAKE) -C $$dir update || exit 1; \
	done
