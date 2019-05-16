all: lin win

lin: main.c
	gcc -o main.o main.c -lSDL2

win: main.c
	i686-w64-mingw32-gcc main.c -o main.exe -ISDL/include -LSDL/lib -lmingw32 -lSDL2main -lSDL2 -mwindows

run: lin
	./main.o

clean:
	rm -f *.exe *.o

