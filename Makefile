all:
	true

install:
	mkdir -p $(DESTDIR)/usr/bin/
	cargo build --release
	install target/release/swayosd $(DESTDIR)/usr/bin/swayosd
	chmod 755 $(DESTDIR)/usr/bin/swayosd
