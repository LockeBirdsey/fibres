all:
	@cat Makefile

compile:
	tweego -d src/Fibres.html -o src/Fibres.twee

compile-html:
	tweego src/Fibres.twee -o src/Fibres.html

edit:
	cp src/Fibres.html ${HOME}/Documents/Twine/Stories

save:
	cp ${HOME}/Documents/Twine/Stories/Fibres.html src/Fibres.html

build:
	npx electron-forge make

build-html:
	rm -rf out/html
	mkdir out/html
	make compile
	make compile-html
	cp src/Fibres.html src/index.html
	cp -R src/* out/html	
	cd out; zip Fibres.zip -r html

test:
	npm start

test-build:
	npx electron-forge start
