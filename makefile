no_target:
	make install

clean:
	cd slang;      make clean
	cd extensions; make clean

extensions:
	cd extensions; make install

install:
	cd slang;      make install
	cd extensions; make install

prepare:
	git submodule init
	git submodule update

release:
	cd slang;      make release; make install
	cd extensions; make release; make install

slang:
	cd slang;      make install

unit_tests:
	./runUnitTests.sh

update:
	git submodule sync
	git submodule update

.PHONY: clean extensions slang

