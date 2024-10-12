CC := clang
CFLAGS := -Wall -Wextra

LIBS := `pkg-config --libs --cflags raylib`

MAIN := canny
OBJ := canny.o
SRC := canny.c

$(MAIN):$(OBJ)
	$(CC) $(CFLAGS) -o $(MAIN) $(OBJ) $(LIBS)

$(OBJ):$(SRC)
	$(CC) $(CFLAGS) -o $(OBJ) -c $(SRC) $(LIBS)


clean:
	rm *.o; rm canny

