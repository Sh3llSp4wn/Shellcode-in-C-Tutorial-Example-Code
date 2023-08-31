CC=gcc
CFLAGS=-fPIC -Os -fno-stack-protector -ggdb
AS=as
LD=ld
LDFLAGS=--gc-sections

LINK_ORDER=start.o plat_iface.o hello.o

all:
	$(CC) -o hello.o $(CFLAGS) -c hello.c
	$(AS) -o plat_iface.o plat_iface.s
	$(AS) -o start.o start.s
	$(LD) -o hello.elf $(LDFLAGS) $(LINK_ORDER) -T elf.ld
	$(LD) -o hello.bin $(LDFLAGS) $(LINK_ORDER) -T binary.ld --oformat=binary

clean:
	rm *.o *.elf *.bin

