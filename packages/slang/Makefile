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
	cp -r ../../slang/src/bundle/bin/* bin/
	cp -r ../../slang/src/bundle/man/* man/
	cp -r ../../slang/src/bundle/scripts/* scripts/
	cp -r ../../slang/src/bundle/share/* share/
	cp ../../slang/src/README.md ./
	cp ../../slang/build/bin/slang*/* bin/
