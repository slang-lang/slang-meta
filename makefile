no_target:

clean:
	cd slang; make clean
	cd extensions; make clean

install:
	cd slang; make install
	cd extensions; make install

release:
	cd slang; make release
	cd extensions; make releas;

extensions:
	cd extensions; make install

slang:
	cd slang; make install

unit_tests:
	./runUnitTests.sh
