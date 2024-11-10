no_target:
	make install

clean:
	cd build; make clean

release:
	mkdir -p build; cd build; cmake -DBUILD=Release ../src

install:
	cd build; make
	./install.sh
