SCRIPT=randpass

.PHONY: build docs test install clean

build: docs

docs: ${SCRIPT}.1

${SCRIPT}.1: ${SCRIPT}
	cat $< | pod2man -n "${SCRIPT}" -s 1 -r "${VERSION}" -c '' > $@

test:
	@for t in t/*.t; do $$t; done

install:
	install -SCv "${SCRIPT}" /usr/local/bin
	install -SCv "${SCRIPT}.1" "/usr/local/man/man1/${SCRIPT}.1"

