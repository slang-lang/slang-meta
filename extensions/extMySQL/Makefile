.PHONY: no_target check clean compile deploy distclean install prepare release update

include config

no_target:
	$(MAKE) compile

check:
	@if [ ! -f build/compile_commands.json ]; then \
		echo "Error: build/compile_commands.json not found. Please run 'make prepare' first."; \
		exit 1; \
	fi
	@clang-tidy -p build $(shell find src -name '*.cpp' -type f | sort)

clean:
	cd build; $(MAKE) clean

compile:
	cd build; $(MAKE) all

deploy:
	sudo cp build/lib/* ${SHARE_EXTENSIONS_DIRECTORY}/

distclean:
	rm -r build

install:
	$(MAKE) compile
	$(MAKE) deploy

prepare:
	mkdir -p build
	cd build; cmake -DSLANG_WORKSPACE_ROOT=${BASEPATH} -DBUILD=Release ../src

release:
	$(MAKE) prepare
	$(MAKE) install

update:
	cd src; git pull
