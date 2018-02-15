PROGS = first_c first_s add_test

OBJS = first_s.o add.o
CFLAGS = -g

all : ${PROGS}

first_a : first_a.s
	as -o first_a.o first_a.s
	gcc -o first_a first_a.o

add.o : add.s
	as -o add.o add.s

add_test : add_test.c add.o
	gcc -o add_test add_test.c add.o

clean :
	rm -rf ${PROGS} ${OBJS}
