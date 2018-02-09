PROGS = gdb_ex1 gdb_ex2 gdb_ex3 first_c first_a add_test \
        normalized_to_binstr bitfiddle

OBJS = first_a.o add.o
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
