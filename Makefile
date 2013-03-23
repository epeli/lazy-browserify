

all:
	mkdir -p bundle
	node_modules/.bin/browserify -x ./first.js -x ./second.js none.js > bundle/none.js
	node_modules/.bin/browserify -x ./first.js -x ./second.js simple.js > bundle/simple.js
	node_modules/.bin/browserify -x ./first.js -x ./second.js double.js > bundle/double.js
	node_modules/.bin/browserify -x ./first.js -x ./second.js lazy.js > bundle/lazy.js
	node_modules/.bin/browserify -x ./first.js -x ./second.js both.js > bundle/both.js

	node_modules/.bin/browserify -r ./first.js > bundle/first.js
	node_modules/.bin/browserify -r ./second.js > bundle/second.js


serve:
	node_modules/.bin/serve .

watch:
	./watch.sh

clean:
	rm bundle/*
