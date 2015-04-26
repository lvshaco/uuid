.PHONY: uuid.so clean

DEFINE=-DHAVE_STDLIB_H -DHAVE_UNISTD_H -DHAVE_GETRLIMIT -DHAVE_INTTYPES_H
uuid.so: gen_uuid.c pack.c unpack.c 
	gcc -g -Wall -Werror -fPIC -shared -o $@ $^ $(DEFINE)

clean:
	rm uuid.so
