#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aollivie <aollivie@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2014/11/14 17:07:06 by aollivie          #+#    #+#              #
#    Updated: 2016/02/03 12:47:52 by aollivie         ###   ########.fr        #
#                                                                              #
#******************************************************************************#


DEBUG=no
CC=gcc

ifeq ($(DEBUG), yes)
				CFLAGS= -Wall -Wextra -g -ansi -pedantic
else
		CFLAGS= -Wall -Wextra -Werror
endif

LIB=ar rc
RANLIB=ranlib

NAME =lib_unit_test.a

I_DIR= -I inc/

O_DIR= obj

MKDIR = mkdir

VPATH= src/output:src/test_file

C_PUT=ut_success.c ut_fail.c

C_TEST_FILE= ok.c

OBJS= $(C_PUT:%.c=$(O_DIR)/%.o) $(C_TEST_FILE:%.c=$(O_DIR)/%.o)


.PHONY : all clean fclean re

all : $(NAME)

ifeq ($(DEBUG),yes)
				@echo "Generation mode debug"
else
				@echo "Generation mode release"
endif

$(NAME):$(OBJS)
				$(LIB) $@ $^
				$(RANLIB) $(NAME)

# %.o: libft.h -I

$(O_DIR)/%.o: %.c
				$(CC) $(CFLAGS) $(I_DIR) -o $@ -c $<

$(OBJS): | $(O_DIR)

$(O_DIR):
				$(MKDIR) $(O_DIR)
clean :
		rm -rf $(O_DIR)

fclean : clean
		@rm -rf $(NAME)

re : fclean all
