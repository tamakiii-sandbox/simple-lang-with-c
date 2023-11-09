CC = gcc
CFLAGS = -std=c11 -Wno-implicit-function-declaration
.DEFAULT_GOAL = lang

test: test.sh
	./$< 0 0
	./$< 1 1

clean:
	rm -f ./lang
