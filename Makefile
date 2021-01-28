BIN:=math_prog3

.PHONY: all clean

all: $(BIN)

$(BIN): math.c
	$(CC) -o $@ math.c

clean:
	rm -f $(BIN)
