PROGS = define_test exit_code str_to_int 

all : ${PROGS}

define_test : define_test.c
	gcc -o define_test define_test.c

exit_code : exit_code.c
	gcc -o exit_code exit_code.c

clean :
	rm -rf ${PROGS}
