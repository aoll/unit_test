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
CC=clang

ifeq ($(DEBUG), yes)
				CFLAGS= -Wall -Wextra -g -ansi -pedantic
else
		CFLAGS= -Wall -Wextra
endif

LIB=ar rc
RANLIB=ranlib

AR = ar
ARFLAGS = rcs

NAME =lib_unit_test.a

LIBFT = ../../libft/libft.a

I_DIR= -I inc/ -I../../inc -I../../libft/inc

O_DIR= obj

MKDIR = mkdir

VPATH= src/output

C_PUT=ut_success.c ut_fail.c ut_name_function_tested.c


OBJS= $(C_PUT:%.c=$(O_DIR)/%.o) #$(C_TEST_FILE:%.c=$(O_DIR)/%.o)


.PHONY : all clean fclean re

all :
			make -C ../../libft
			make -j $(NAME)

ifeq ($(DEBUG),yes)
				@echo "Generation mode debug"
else
				@echo "Generation mode release"
endif

$(NAME):$(OBJS) $(LIBFT)
				$(AR) $(ARFLAGS)  $@ $^

$(O_DIR)/%.o: %.c
				$(CC) $(CFLAGS) $(I_DIR) -c $< -o $@

$(OBJS): | $(O_DIR)

$(O_DIR):
				$(MKDIR) $(O_DIR)
clean :
		rm -rf $(O_DIR)

fclean : clean
		@rm -rf $(NAME)

re : fclean all
