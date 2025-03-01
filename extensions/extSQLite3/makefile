include config

no_target:
	make compile

clean:
	cd build; make clean

compile:
	cd build; make

install:
	make compile
	sudo cp build/lib/* ${SHARE_LIBS_DIRECTORY}/

prepare:
	mkdir -p build
	cd build; cmake -DBUILD=Release ../src

release:
	make prepare
	make compile
