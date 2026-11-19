.PHONY: all clean FORCE

all: README.md

FORCE:

README.md: guessinggame.sh FORCE
	@echo "# Guessing Game" > README.md
	@echo "" >> README.md
	@echo "The current date and time of this run: $$(date)" >> README.md
	@echo "" >> README.md
	@echo "guessinggame.sh contains the following number of lines:" >> README.md
	@wc -l < guessinggame.sh >> README.md

clean:
	rm -f README.md
