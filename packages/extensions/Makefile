.PHONY: all clean extBase64 extCurl

no_target: all

all: extBase64 extCurl lint

clean:
	$(MAKE) -C extBase64 clean
	$(MAKE) -C extCurl clean

extBase64:
	$(MAKE) -C extBase64

extCurl:
	$(MAKE) -C extCurl

lint:
	lintian *.deb

