@echo off
IF EXIST .\out\html (powershell.exe rmdir .\out\html -Recurse)
mkdir .\out\html
call Compile.bat
powershell.exe Copy-Item .\src\Fibres.html .\src\index.html
powershell.exe Copy-Item -R .\src\* .\out\html	
cd .\out
powershell.exe Compress-Archive -Path html -DestinationPath Fibres.zip -Force