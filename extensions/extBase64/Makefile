.PHONY: no_target clean compile install prepare release update

include config

no_target:
	$(MAKE) compile

clean:
	cd build; $(MAKE) clean

compile:
	cd build; $(MAKE) all

deploy:
	sudo cp build/lib/* ${SHARE_EXTENSIONS_DIRECTORY}/

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

