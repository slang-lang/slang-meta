no_target:
	make compile

clean:
	cd build; make clean

compile:
	cd build; make all

install:
	cd build; make all
	./install.sh

prepare:
	mkdir -p build; cd build; cmake -DBUILD=Release ../src

release:
	make prepare
	make install

update:
	git submodule sync .
	git submodule update .

