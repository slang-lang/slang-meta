.PHONY: clean compile install prepare release update

no_target:
	$(MAKE) compile

clean:
	cd build; $(MAKE) clean

compile:
	cd build; $(MAKE) all

install:
	cd build; $(MAKE) all
	./install.sh

prepare:
	mkdir -p build; cd build; cmake -DBUILD=Release ../src

release:
	$(MAKE) prepare
	$(MAKE) install

update:
	git submodule sync .
	git submodule update .
	./update.sh
