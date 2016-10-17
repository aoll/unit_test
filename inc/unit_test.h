#ifndef UNIT_TEST_H
#define UNIT_TEST_H

/*
 * DEFINE
 */

# define LEN_CELL_NAME_FUNCTION_TESTED 30
# define MAX_LEN_NAME_FUNCTION_TESTED 27

// # define DEFAULT   = "\033[0m";
// # define HIGHLIGHT = "\033[1m";
// # define UNDERLINE = "\033[4m";
// # define BLINK     = "\033[5m";
// # define BLACK     = "\033[30m";
# define RED_TERM      \033[31m
# define GREEN_TERM     \033[32m
// # define YELLOW    = "\033[33m";
// # define BLUE      = "\033[34m";
// # define PURPLE    = "\033[35m";
// # define CYAN      = "\033[36m";
// # define WHITE     = "\033[37m";

/*
 * INCLUDE
 */

#include <stdio.h>
// #include "project.h"
#include "libft.h"

/*
 * PROTOTYPE
 */

void ut_name_function_tested(char *name_function_tested);
void ut_fail(void);
void ut_success(void);

# endif
