PKGNAME=java-gnome-bin
VERSION=4.1.3-3
TAR_ROOT_DIR=$(PKGNAME)-v$(VERSION)
TAR_FILE=$(TAR_ROOT_DIR).tar

tar: $(TAR_FILE)

$(TAR_FILE): $(TAR_ROOT_DIR)
	tar -cf $@ $<
	rm -rf $(TAR_ROOT_DIR)

$(TAR_ROOT_DIR):
	mkdir $(TAR_ROOT_DIR)
	cp -r --no-dereference root/* $(TAR_ROOT_DIR)

clean:
	rm -rf *.tar
