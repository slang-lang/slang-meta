no_target:
	make compile

clean:
	cd slang;      make clean
	cd extensions; make clean

compile:
	cd slang;      make compile
	cd extensions; make compile

extensions:
	cd extensions; make install

install:
	cd slang;      make install
	cd extensions; make install

prepare:
	git submodule init
	git submodule update
	cd docs;       make prepare
	cd slang;      make prepare
	cd extensions; make prepare

release:
	cd slang;      make release
	cd extensions; make release

slang:
	cd slang;      make install

unit_tests:
	./runUnitTests.sh

update:
	git pull
	cd docs;       make update
	cd slang;      make update
	cd extensions; make update

.PHONY: clean extensions slang

