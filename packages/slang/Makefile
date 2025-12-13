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
	mkdir -p man
	mkdir -p libs
	./generate-changelog.sh
	cp    slang/build/bin/slang*/*   bin/
	cp -r slang/src/Bundle/bin/*     bin/
	cp -r slang/src/Bundle/man/*     man/
	cp -r slang/src/Bundle/scripts/* scripts/
	cp -r slang/src/Bundle/share/*   share/
	cp    slang/src/README.md        ./

