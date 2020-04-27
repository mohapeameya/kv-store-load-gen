programs = loadgenerator server
CC = g++
CFLAGS = -Wall

all: $(programs)

$(programs): %: %.cpp
	$(CC) $(CFLAGS) -o $@ $< -lpthread

.PHONY : clean
clean :
	-rm server loadgenerator
