#pragma once

#include <stdbool.h>
#include <stddef.h>
#include "util.h"


#define BUFF_SIZE 4096

#define init_string(STR) 	\
	string_t STR = { 	\
		{},		\
		NULL,		\
		STR.data,	\
		find,		\
		store		\
	}



typedef struct string_t string_t;
struct string_t {
	char data[BUFF_SIZE],
		*base,
		*top;
	char *(*find) (char *);
	char *(*store) (char *);
};


extern string_t string;
