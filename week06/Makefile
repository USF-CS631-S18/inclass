PROGS = driver hello01_printf

OBJS_DRIVER = factorial_c.o factorial_s.o count_a_c.o count_a_s.o
OBJS = hello01_printf.o

CFLAGS = -g

%.o : %.s
	as -o $@ $<

%.o : %.c
	gcc -c ${CFLAGS} -o $@ $<

all : ${PROGS}

driver : driver.c ${OBJS_DRIVER}
	gcc -o driver driver.c ${OBJS_DRIVER}

hello01_printf : hello01_printf.o
	gcc -o $@ $<

clean :
	rm -rf ${PROGS} ${OBJS} ${OBJS_DRIVER}
