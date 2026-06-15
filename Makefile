.PHONY: install serve build test clean

install:
	npm install
	hugo mod tidy

serve:
	npm run serve

build:
	npm run build:production

test:
	npm run test

clean:
	npm run clean
