.PHONY: all clean extBase64

no_target: all

all: extBase64 lint

clean:
	$(MAKE) -C extBase64 clean

extBase64:
	$(MAKE) -C extBase64

lint:
	lintian *.deb

