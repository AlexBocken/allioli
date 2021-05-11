PREFIX = /usr/local

allioli: allioli.sh allioli.awk allioli.tsv
	cat allioli.sh > $@
	echo 'exit 0' >> $@
	echo '#EOF' >> $@
	tar cz allioli.awk allioli.tsv >> $@
	chmod +x $@

test: allioli.sh
	shellcheck -s sh allioli.sh

clean:
	rm -f allioli

install: allioli
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp -f allioli $(DESTDIR)$(PREFIX)/bin
	chmod 755 $(DESTDIR)$(PREFIX)/bin/allioli

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/allioli

.PHONY: test clean install uninstall
