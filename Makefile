
all: clean rpm

test:
	tests/confirm-rpm.sh

deps:
	gem install fpm

deps-macos:
	brew install rpm

deps-circle:
	sudo apt-get -y install rpm
	# gem install package_cloud

rpm: fetch package

fetch:
	bash scripts/fetch.sh

package:
	bash scripts/build-rpm.sh

clean:
	rm -rf build*
	rm -rf pkgs

.PHONY: all
