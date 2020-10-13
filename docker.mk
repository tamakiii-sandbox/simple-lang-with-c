.PHONY: setup dependencies build bash

NAME := tamakiii-sandbox/simple-lang-with-c

setup: \
	dependencies \
	build

dependencies:
	type docker > /dev/null

build: Dockerfile
	docker build -t $(NAME) .

bash:
	docker run -it --rm -v $(PWD):/work $(NAME) $@

clean:
	docker image rm $(NAME)
