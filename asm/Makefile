all: build

build: x86_64 arm64

x86_64: x86_64.S
	x86_64-linux-gnu-gcc -c $< -o $@.o
	x86_64-linux-gnu-ld -o $@ $@.o

arm64: arm64.S
	aarch64-linux-gnu-gcc -c $< -o $@.o
	aarch64-linux-gnu-ld -o $@ $@.o

clean:
	rm *.o -f

disasm: build
	x86_64-linux-gnu-objdump -d x86_64
	aarch64-linux-gnu-objdump -d arm64
