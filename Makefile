CC=gcc
CFLAGS=-Wall -O2
LDFLAGS=-lnetfilter_queue

TARGET=1m-block

all: $(TARGET)

$(TARGET): 1m-block.c
	$(CC) $(CFLAGS) -o $@ $^ $(LDFLAGS)

clean:
	rm -f $(TARGET)

.PHONY: all clean
