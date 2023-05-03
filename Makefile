
hello: ./src/hello.c
	gcc -o hello ./src/hello.c

run: hello
	./hello
