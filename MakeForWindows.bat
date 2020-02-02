@echo off
SET command=%1

IF %command%==test (Test.bat
	) ELSE IF %command%==compile-html (CompileToHTML.bat
	) ELSE IF %command%==build-html (BuildHTML.bat
	) ELSE IF %command%==build (Build.bat
	) ELSE IF %command%==test-build (TestBuild
	) ELSE IF %command%==-h(echo %help%
	) ELSE (echo %help%)

helppane="meow"
rem test:
rem 	test runs the HTML in a testing Electron window

rem compile-html
rem 	Converts the twee file into an HTML file ready for testing

rem build-html
rem 	Runs compile and compile-html and then copies everything located in
rem 	src/, and packages it in a zip ready for upload to Itch.io, GameJolt or another service

"

rem compile:
rem 	tweego -d src/Fibres.html -o src/Fibres.twee

rem compile-html:
rem 	tweego src/Fibres.twee -o src/Fibres.html

rem edit:
rem 	cp src/Fibres.html ${HOME}/Documents/Twine/Stories

rem save:
rem 	cp ${HOME}/Documents/Twine/Stories/Fibres.html src/Fibres.html

rem build-html:
rem 	rm -rf out/html
rem 	mkdir out/html
rem 	make compile
rem 	make compile-html
rem 	cp src/Fibres.html src/index.html
rem 	cp -R src/* out/html	
rem 	cd out; zip Fibres.zip -r html
