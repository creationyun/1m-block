LDLIBS=-lnetfilter_queue

all: 1m-block

1m-block: net-address.o protocol-hdr.o main.o
	$(LINK.cc) $^ $(LDLIBS) -o $@

clean:
	rm -f 1m-block *.o
