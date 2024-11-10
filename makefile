no_target:

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
	cd slang;      make release
	cd extensions; make release;
slang:
	cd slang;      make install

unit_tests:
	./runUnitTests.sh

