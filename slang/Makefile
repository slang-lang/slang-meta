.PHONY: no_target check clean compile deploy distclean install prepare release update

include config

no_target: compile

check:
	@if [ ! -f build/compile_commands.json ]; then \
		echo "Error: build/compile_commands.json not found. Please run 'make prepare' first."; \
		exit 1; \
	fi
	@clang-tidy -p build $(shell find src/Projects -name '*.cpp' -type f | sort)

clean:
	cd build; $(MAKE) clean

compile:
	@echo "Compiling Slang..."
	cd build; $(MAKE) all

deploy:
	@echo "Installing Slang..."
	@for file in slang slang-app slang-dbg slang-pkg; do \
		if [ -f $(TARGET_DIRECTORY)/$$file ]; then \
			VERSION=$$($(TARGET_DIRECTORY)/$$file --version | sed -n 's/.* \([0-9]\+\.[0-9]\+\.[0-9]\+\).*/\1/p'); \
			if [ -n "$$VERSION" ]; then \
				echo "Backing up $$file (version $$VERSION)"; \
				sudo mv $(TARGET_DIRECTORY)/$$file $(TARGET_DIRECTORY)/$$file^$$VERSION; \
			fi; \
		fi; \
	done
	@echo "Deploying binaries..."
	@sudo cp $(BASEPATH)/slang/build/bin/slang*/* $(TARGET_DIRECTORY)/
	@sudo cp $(BASEPATH)/slang/src/Bundle/bin/* $(TARGET_DIRECTORY)/
	@echo "Deploying library scripts..."
	@sudo cp -r $(BASEPATH)/slang/src/Bundle/scripts/* $(SHARE_DIRECTORY)/scripts/
	@echo "Deploying man pages..."
	@sudo cp $(BASEPATH)/slang/src/Bundle/man/* /usr/share/man/man1/
	@echo "Deploying configuration..."
	@sudo cp -r $(BASEPATH)/slang/src/Bundle/share/* /usr/share/

distclean:
	rm -r build

install: compile deploy

prepare:
	mkdir -p build
	cd build; cmake -DSLANG_WORKSPACE_ROOT=${BASEPATH} -DBUILD=Release ../src

release: prepare install

update:
	@echo "Updating Slang..."
	@cd src && \
	git fetch -p && \
	git switch main && \
	git pull
