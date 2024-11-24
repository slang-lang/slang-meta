no_target:
	make install
	
install:
	cd build; make

prepare:
	mkdir -p build
	cd build; cmake -DBUILD=Release ../src

release:
	make prepare
	make install

