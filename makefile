PKGNAME=java-gnome-bin
VERSION=4.1.3
TAR_FILE=$(PKGNAME)-v$(VERSION).tar

tar: $(TAR_FILE)

$(TAR_FILE): usr/
	tar -cf $@ $<

clean:
	rm -rf *.tar