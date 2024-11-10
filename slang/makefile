no_target:
	make install

clean:
	cd build; make clean

install:
	cd build; make
	./install.sh

release:
	mkdir -p build; cd build; cmake -DBUILD=Release ../src

update:
	git submodule sync .
	git submodule update .

