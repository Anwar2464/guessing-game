.PHONY: all

all: README.md

README.md: guessinggame.sh makefile
	@powershell -NoProfile -ExecutionPolicy Bypass -Command "Set-Content README.md '# Guessing Game Project'; Add-Content README.md '';
	 Add-Content README.md ('- **Date and Time:** ' + (Get-Date -Format 'yyyy-MM-dd HH:mm:ss'));
	  Add-Content README.md ('- **Lines of Code:** ' + (Get-Content guessinggame.sh).Count);
	   Add-Content README.md ''; 
	   Add-Content README.md '## Description'; 
	   Add-Content README.md 'A Bash program that asks users to guess the number of files in the current directory.';
	    Add-Content README.md ''; 
		Add-Content README.md '## How to Run';
		Add-Content README.md 'Run the program using: bash guessinggame.sh'"