PROGS = driver

OBJS = add_c.o add_s.o iseq_c.o iseq_s.o count_zeros_c.o count_zeros_s.o
CFLAGS = -g

%.o : %.s
	as -o $@ $<

%.o : %.c
	gcc -c ${CFLAGS} -o $@ $<

all : ${PROGS}

driver : driver.c ${OBJS}
	gcc -o driver driver.c ${OBJS}

clean :
	rm -rf ${PROGS} ${OBJS}
