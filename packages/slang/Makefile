no_target:
	$(MAKE) package

all:
	$(MAKE) package

clean:
	find .. -maxdepth 1 -type f -name 'slang_*' -delete

package:
	$(MAKE) prepare
	dpkg-buildpackage -us -uc -nc

prepare:
	echo "Preparing package..."
	cp ../../slang/src/bin/* bin/
	cp ../../slang/src/man/* man/
	cp ../../slang/src/scripts/* scripts/
	cp ../../slang/src/share/* share/
	cp ../../slang/src/README.md ./
	cp ../../slang/build/bin/slang*/* bin/
