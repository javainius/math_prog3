BIN:=math_prog3

.PHONY: all clean

all: $(BIN)

$(CC) -o $@ math.c

clean:
	rm -f $(BIN)
