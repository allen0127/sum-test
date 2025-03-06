all: sum-test

sum-test: sum.o main.o
	g++ -o sum-test sum.o main.o

sum.o: sum.h sum.cpp
	g++ -c -o sum.o sum.cpp

main.o: sum.h main.cpp
	g++ -c -o main.o main.cpp

clean:
	rm -f sum-test *.o


