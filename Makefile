PWD=$(shell pwd)
APP_NAME=mines
BUILD_PATH=$(PWD)/build

all: clean
	mkdir -p $(BUILD_PATH)
	swiftc \
		Sources/*.swift \
		-o $(BUILD_PATH)/$(APP_NAME)

install:
	mkdir $(DESTDIR)/bin
	install -m755 ./build/mines $(DESTDIR)/bin/mines

clean:
	rm -rf build
