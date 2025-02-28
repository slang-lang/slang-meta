no_target:
	make compile

clean:
	./clean.sh

compile:
	./compile.sh

install:
	./install.sh

prepare:
	./prepare.sh

release:
	#make update
	make prepare
	make install

update:
	git submodule sync .
	git submodule update .

