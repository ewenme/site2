VAULT ?= $(HOME)/Documents/ewen
RSYNC  = rsync -a --delete --include='*.md' --exclude='*'

.PHONY: sync publish reading playing watching

reading:
	$(RSYNC) $(VAULT)/logs/books/ _reading/
playing:
	$(RSYNC) $(VAULT)/logs/games/ _playing/
watching:
	$(RSYNC) $(VAULT)/logs/films/ _watching/

sync: reading playing watching

publish: sync
	git add _reading _playing _watching
	@git diff --cached --quiet && echo "nothing to publish" || \
	  (git commit -m "sync logs" && git push)
