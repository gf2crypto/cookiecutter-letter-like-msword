@ECHO OFF

set TEX_SOURCE="{{cookiecutter.project_name}}"

set TEMP_FILES=("*.aux", "*.fdb_latexmk", "*.fls", "*.log", "*.out", "*.synctex.gz", "*.xdv")

set ACTION=%1

IF "%ACTION%"=="help" goto help
IF "%ACTION%"=="build" goto build
IF "%ACTION%"=="watch" goto watch
IF "%ACTION%"=="" goto build
IF "%ACTION%"=="clean" goto clean
IF "%ACTION%"=="purge" goto purge

goto exit

:help
echo Usage: make [options] [target] ...
echo Valid targets:
echo.
echo     `build` - compile the tex-source (default action)
echo     `watch` - compile the tex-source continously
echo     `help`  - display this help message
echo     `clean` - delete temporary files
echo     `purge` - delete temporary files and produced pdf file
echo.

goto exit

:build
latexmk -cd -f -xelatex -interaction=nonstopmode -synctex=1 %TEX_SOURCE%.tex

goto exit

:watch
latexmk -pvc -f -xelatex -interaction=nonstopmode -synctex=1 %TEX_SOURCE%.tex

goto exit

:clean
for %%F in %TEMP_FILES% do del /F %%F

goto exit

:purge
for %%F in %TEMP_FILES% do del /F %%F
del /F %TEX_SOURCE%.pdf

goto exit

:exit
PAUSE
