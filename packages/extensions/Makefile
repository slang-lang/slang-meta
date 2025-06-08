.PHONY: all clean extBase64 extCurl extJson extMariaDB extMQ extMySQL extPipe extSlang extSQLite3

no_target: all

all: extBase64 extCurl extJson extMariaDB extMQ extMySQL extPipe extSlang extSQLite3 lint

clean:
	$(MAKE) -C extBase64 clean
	$(MAKE) -C extCurl clean
	$(MAKE) -C extJson clean
	$(MAKE) -C extMariaDB clean
	$(MAKE) -C extMQ clean
	$(MAKE) -C extMySQL clean
	$(MAKE) -C extPipe clean
	$(MAKE) -C extSlang clean
	$(MAKE) -C extSQLite3 clean

extBase64:
	$(MAKE) -C extBase64

extCurl:
	$(MAKE) -C extCurl

extJson:
	$(MAKE) -C extJson

extMariaDB:
	$(MAKE) -C extMariaDB

extMQ:
	$(MAKE) -C extMQ

extMySQL:
	$(MAKE) -C extMySQL

extPipe:
	$(MAKE) -C extPipe

extSlang:
	$(MAKE) -C extSlang

extSQLite3:
	$(MAKE) -C extSQLite3

lint:
	lintian *.deb

