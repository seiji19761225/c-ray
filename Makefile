#-----------------------------------------------------------------------
# Makefile
# $Id: Makefile,v 1.1.1.1 2020/07/31 00:00:00 seiji Exp seiji $
#-----------------------------------------------------------------------
.PHONY: clean
.SUFFIXES: .c .o

SHELL	= /bin/sh

CC	= gcc
CFLAGS	= -O3 -fopenmp
LIBS	= -lm

SRC	= c-ray.c
OBJ	= $(subst .c,.o,$(SRC))
BIN	= $(subst .c,.exe,$(SRC))

.c.o:
	$(CC) $(CFLAGS) -c -o $@ $<

default: $(BIN)
$(BIN):  $(OBJ)
	$(CC) $(CFLAGS) -o $@ $< $(LIBS)

clean:
	rm -f *.o core* *.ppm
	rm -f $(BIN)
