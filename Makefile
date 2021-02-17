install:
	./scripts/yarn-wrapper.sh install

dev: install
	./scripts/yarn-wrapper.sh dev

build: install
	./scripts/yarn-wrapper.sh build

publish: build
	npm publish