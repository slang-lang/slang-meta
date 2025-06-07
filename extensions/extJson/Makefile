.PHONY: no_target clean compile install prepare release update

include config

no_target:
	$(MAKE) compile

clean:
	cd build; $(MAKE) clean

compile:
	cd build; $(MAKE)

install:
	$(MAKE) compile
	sudo cp build/lib/* ${SHARE_LIBS_DIRECTORY}/

prepare:
	mkdir -p build
	cd build; cmake -DBUILD=Release ../src

release:
	$(MAKE) prepare
	$(MAKE) compile

update:
	cd src; git pull
