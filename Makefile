
DIST_NAME = tribu

all: tribu

tribu: 
	gnatmake $(DIST_NAME).adb

test:
	./$(DIST_NAME)

clean:
	rm -rf *.o *.ali $(DIST_NAME)
