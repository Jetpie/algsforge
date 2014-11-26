OBJS = SortingFactory.o
CC = g++
DEBUG = -g
CFLAGS = -Wall -c $(DEBUG)
LFLAGS = -Wall $(DEBUG)

INCLUDE = include/
SRC = src/
BIN = bin/

INCLUDES = -I$(INCLUDE)

PROG = $(BIN)runcode

all : CREATE_DIR $(PROG)

CREATE_DIR:
	mkdir -p $(BIN)
$(PROG): $(OBJS)
	$(CC) $(INCLUDES) $(LFLAGS) samples/main.cpp -o $(PROG)

SortingFactory.o : $(INCLUDE)sorting/sorting.hpp
	$(CC) $(CFLAGS) $(INCLUDES) $(SRC)sorting.cpp

clean:
	\rm *.o $(PROG)
