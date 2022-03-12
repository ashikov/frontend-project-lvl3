develop:
	npx webpack serve

install:
	npm ci

build:
	rm -rf dist
	NODE_ENV=production npx webpack

test:
	npm test

lint:
	npx eslint .

.PHONY: test

vercel-install:
	npm install -g webpack webpack-cli html-webpack-plugin
	npm ci

vercel-build:
	webpack
