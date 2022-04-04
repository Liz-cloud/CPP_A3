# These are the variables that will be used for compiling the code
CC=g++
CCFLAGS=-std=c++2a

findcomp.exe: ConnectedComponent.o PGMimageProcessor.o driver.o
	$(CC) ConnectedComponent.o PGMimageProcessor.o driver.o -o findcomp.exe $(CCFLAGS)

ConnectedComponent.o: ConnectedComponent.cpp
	$(CC) -c ConnectedComponent.cpp -o ConnectedComponent.o $(CCFLAGS)

PGMimageProcessor.o: PGMimageProcessor.cpp
	$(CC) -c PGMimageProcessor.cpp -o PGMimageProcessor.o $(CCFLAGS)

driver.o: driver.cpp
	$(CC) -c driver.cpp -o driver.o $(CCFLAGS)

run:
	./findcomp.exe -s 3 1000 -t 128 -w output.pgm -p examples/chess.pgm

UnitTestCases.exe: UnitTestCases.cpp
	$(CC) UnitTestCases.cpp -o UnitTestCases.exe $(CCFLAGS)

clean:
	rm *.o *.exe *.pgm
