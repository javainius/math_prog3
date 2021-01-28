BIN:=math_prog3

.PHONY: all clean

all: $(BIN)

$(BIN): math.c
	$(CC) -o $@ 

clean:
	rm -f $(BIN)
