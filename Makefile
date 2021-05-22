all:
	mkdir -p bin
	cd bin; qmake ..;
	${MAKE} -C bin

run: all
	bin/HelloWolrd

clean:
	rm -rf bin