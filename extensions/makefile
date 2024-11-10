no_target:
	make install

clean:
	./clean.sh

install:
	./install.sh

release:
	make update
	make install

update:
	git submodule sync .
	git submodule update .

