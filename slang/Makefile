.PHONY: clean compile deploy install prepare release update

no_target:
	$(MAKE) compile

clean:
	cd build; $(MAKE) clean

compile:
	cd build; $(MAKE) all

deploy:
	./install.sh

install:
	cd build; $(MAKE) all
	$(MAKE) deploy

prepare:
	mkdir -p build; cd build; cmake -DBUILD=Release ../src

release:
	$(MAKE) prepare
	$(MAKE) install

update:
	git submodule sync .
	git submodule update .
	./update.sh

