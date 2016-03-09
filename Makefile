DOCKER_NAME := brandt/racadm

.PHONY: build shell install uninstall

build:
	docker build -t $(DOCKER_NAME) .

shell: build
	docker run --rm -it $(DOCKER_NAME) /bin/bash

install: build
	@echo "Heads up: You'll need to have ~/bin in your path"
	mkdir -m 0700 -p ~/bin
	install -m 755 -c racadm.sh ~/bin/racadm

uninstall:
	$(RM) ~/bin/racadm
