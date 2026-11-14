.PHONY: all clean

all: README.md

README.md: guessinggame.sh makefile
	@echo "# Guessing Game Project" > README.md
	@echo "" >> README.md
	@echo "## Project Information" >> README.md
	@echo "" >> README.md
	@echo "- **Project:** Guessing Game" >> README.md
	@echo "- **Date and Time:** $$(date)" >> README.md
	@echo "- **Lines of Code:** $$(wc -l < guessinggame.sh)" >> README.md
	@echo "" >> README.md
	@echo "## Description" >> README.md
	@echo "" >> README.md
	@echo "A Bash program that asks the user to guess the number of files in the current directory." >> README.md
	@echo "" >> README.md
	@echo "The program provides hints if the guess is too high or too low." >> README.md
	@echo "" >> README.md
	@echo "## How to Run" >> README.md
	@echo "" >> README.md
	@echo '```bash' >> README.md
	@echo "bash guessinggame.sh" >> README.md
	@echo '```' >> README.md

clean:
	rm -f README.md