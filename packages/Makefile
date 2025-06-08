.PHONY: all clean extensions lint slang

all: slang extensions lint

clean:
	rm slang-dbgsym_*.ddeb
	rm slang_*.buildinfo
	rm slang_*.changes
	rm slang_*.deb
	$(MAKE) -C slang clean
	$(MAKE) -C extensions clean

extensions:
	$(MAKE) -C extensions

lint:
	lintian *.deb

slang:
	$(MAKE) -C slang
