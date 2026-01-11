.PHONY: no_target clean compile deploy install prepare release update

include config

no_target:
	$(MAKE) compile

clean:
	cd build; $(MAKE) clean

compile:
	cd build; $(MAKE) all

deploy:
	./install.sh

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
	git submodule sync .
	git submodule update .
	./update.sh

