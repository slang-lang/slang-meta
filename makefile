no_target:
	make compile

clean:
	cd slang;      make clean
	cd extensions; make clean
	cd docs;       make clean

compile:
	cd slang;      make compile
	cd extensions; make compile
	cd docs;       make compile

docs:
	exit

extensions:
	cd extensions; make compile

install:
	cd slang;      make install
	cd extensions; make install
	cd docs;       make install

prepare:
	git submodule init
	git submodule update
	cd slang;      make prepare
	cd extensions; make prepare
	cd docs;       make prepare

release:
	cd slang;      make release
	cd extensions; make release
	cd docs;       make release

slang:
	cd slang;      make compile

unit_tests:
	./runUnitTests.sh

update:
	git pull
	cd slang;      make update
	cd extensions; make update
	cd docs;       make update

.PHONY: clean extensions slang

