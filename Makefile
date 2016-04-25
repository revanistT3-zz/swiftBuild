PWD=$(shell pwd)
APP_NAME=app-name
BUILD_PATH=$(PWD)/build

all: clean
	mkdir -p $(BUILD_PATH)
	swiftc \
		Sources/*.swift \
		-o $(BUILD_PATH)/$(APP_NAME)

install:
	mkdir $(DESTDIR)/bin
	install -m755 ./build/$(APP_NAME) $(DESTDIR)/bin/$(APP_NAME)

clean:
	rm -rf build
