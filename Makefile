CC	:= gcc
CFLAGS	:= -Wall -Werror -O3

CFILES	:= *.c */*.c

TARGET	:= main.elf



all:	$(TARGET)
#	make run


clean:	
	$(RM) *.elf


run:	$(TARGET)
	clear
	./$<



%.elf:	$(CFILES)
	$(CC) $(CFLAGS) -o $@ $^
