INCLUDE=/usr/include/dasm/atari2600/

.PHONY: all
all: et.bin

%.bin: %.s
	dasm $< -o$@ -I$(INCLUDE) -v1 -f3 -s$*.sym -l$*.lst

.PHONY: run
run: et.bin
	stella et.bin

.PHONY: clean
clean:
	rm -f *.bin *.sym *.lst
