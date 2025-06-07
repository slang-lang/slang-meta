.PHONY: clean compile docs extensions install packages prepare release slang unit_tests update

no_target:
	$(MAKE) compile

clean:
	cd slang;      $(MAKE) clean
	cd extensions; $(MAKE) clean
	cd docs;       $(MAKE) clean

compile:
	cd slang;      $(MAKE) compile
	cd extensions; $(MAKE) compile
	cd docs;       $(MAKE) compile

docs:
	$(MAKE) -C docs

extensions:
	cd extensions; $(MAKE) compile

install:
	cd slang;      $(MAKE) install
	cd extensions; $(MAKE) install
	cd docs;       $(MAKE) install

packages:
	$(MAKE) -C packages

prepare:
	git submodule init
	git submodule update
	cd slang;      $(MAKE) prepare
	cd extensions; $(MAKE) prepare
	cd docs;       $(MAKE) prepare

release:
	cd slang;      $(MAKE) release
	cd extensions; $(MAKE) release
	cd docs;       $(MAKE) release

slang:
	cd slang;      $(MAKE) compile

unit_tests:
	./runUnitTests.sh

update:
	git pull
	cd slang;      $(MAKE) update
	cd extensions; $(MAKE) update
	cd docs;       $(MAKE) update
