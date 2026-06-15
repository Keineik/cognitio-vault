.PHONY: install dev serve build test clean

install:
	npm install
	hugo mod tidy

dev: serve

serve:
	npm run serve

build:
	npm run build:production

test:
	npm run test

clean:
	npm run clean
