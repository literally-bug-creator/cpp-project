.PHONY: all build-tests build-release test clean run

all: run

build-release:
	cmake --preset release
	cmake --build --preset release

build-tests:
	cmake --preset tests
	cmake --build --preset tests

run: build-release
	./build/release/my_app

tests: build-tests
	./build/tests/tests/my_tests

clean:
	rm -rf build
