.PHONY: reading watching

reading:
	rm -f _reading/*.md
	cp ~/Documents/ewen/logs/books/* _reading

playing:
	rm -f _playing/*.md
	cp ~/Documents/ewen/logs/games/* _playing

watching:
	rm -f _watching/*.md
	cp ~/Documents/ewen/logs/films/* _watching
