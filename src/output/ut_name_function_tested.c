#include "unit_test.h"

void ut_name_function_tested(char *name_function_tested)
{
  int len_name;
  char *str_padding_space;
  int padding_space;
  int i;

  i = 0;
  len_name = ft_strlen(name_function_tested);
  if (len_name >= LEN_CELL_NAME_FUNCTION_TESTED)
  {
    name_function_tested = ft_strsub(name_function_tested,
      0, MAX_LEN_NAME_FUNCTION_TESTED);
    len_name = MAX_LEN_NAME_FUNCTION_TESTED;
  }
  padding_space = LEN_CELL_NAME_FUNCTION_TESTED - len_name;
  str_padding_space = ft_strnew(padding_space);

  while (i < padding_space)
  {
    str_padding_space[i++] = ' ';
  }
  printf("%s", name_function_tested);
  printf("%s", str_padding_space);
  if (str_padding_space)
    free(str_padding_space);
  return;
}
