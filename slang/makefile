no_target:
	make compile

clean:
	cd build; make clean

compile:
	cd build; make

install:
	cd build; make
	./install.sh

prepare:
	mkdir -p build; cd build; cmake -DBUILD=Release ../src

release:
	make prepare
	make install

update:
	git submodule sync .
	git submodule update .

