.PHONY: all clean package prepare

no_target: all

all: package

clean:
	find .. -maxdepth 1 -type f -name 'slang-*_*' -delete

package:
	$(MAKE) prepare
	dpkg-buildpackage -us -uc -nc

prepare:
	echo "Preparing package..."
	mkdir -p man
	mkdir -p libs
	cp -r extension/src/Bundle/man/*    man/
	cp    extension/build/lib/libSlang* libs/
