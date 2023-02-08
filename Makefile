# Need to change that weird make hack
# Should have configurable compilation (similar to linux ARCH=x86)
# For now:	MODULES=LANG_ALL compiles every modules available
# 		MODULES=<anything else> compiles only core modules
# Default:	LANG_ALL

MODULES	:= LANG_ALL
CFLAGS	:= -Wall -Wextra -Werror -static -ansi -pedantic -O2 -D$(MODULES)	#$(MODULES) #$(DEBUG)


DEBUG	:= -DDEBUG_LANG		\
	   -DDEBUG_DICT		\
	   -DDEBUG_STRING	\
	   -DDEBUG_STREAM	\
	   -DDEBUG_CALL		\


CC	:= cc
SOURCE	:= src
TARGET	:= $(SOURCE)/main.elf



all:	$(TARGET)


run:	$(TARGET)
	./$<

clean:
	$(RM) $(SOURCE)/*.elf



%.elf:	$(SOURCE)/*.c
	$(CC) $(CFLAGS) -o $@ $^