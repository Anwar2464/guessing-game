.PHONY: all

all: README.md

README.md: guessinggame.sh makefile
	@printf '%s\n' '# Guessing Game Project' '' '## Project Information' '' "- **Date and Time:** $$(date '+%Y-%m-%d %H:%M:%S')" "- **Lines of Code:** $$(wc -l < guessinggame.sh | tr -d ' ')" '' '## Description' '' 'A Bash program that asks users to guess the number of files in the current directory.' '' '## How to Run' '' '```bash' 'bash guessinggame.sh' '```' > README.md