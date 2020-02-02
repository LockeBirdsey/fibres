all:
	echo "save | compile | edit | build | test"

compile:
	tweego -d src/Fibres.html -o src/Fibres.twee

build-html:
	tweego src/Fibres.twee -o src/Fibres.html

edit:
	cp src/Fibres.html ${HOME}/Documents/Twine/Stories

save:
	cp ${HOME}/Documents/Twine/Stories/Fibres.html src/Fibres.html

build:
	npx electron-forge make

test:
	npm start

test-build:
	npx electron-forge start
