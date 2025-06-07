.PHONY: no_target clean compile install prepare release update #extBase64 extCurl

no_target:
	$(MAKE) compile

clean:
	./clean.sh

compile:
	./compile.sh

install:
	./install.sh

prepare:
	./prepare.sh

release:
	$(MAKE) prepare
	$(MAKE) install

update:
	git submodule sync .
	git submodule update .

#extBase64:
#	$(MAKE) -C extBase64

#extCurl:
#	$(MAKE) -C extCurl
