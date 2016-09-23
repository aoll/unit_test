#include "test_project.h"

int   main(void)
{
  printf("%s\n", "hello unit_test get started");
  ut_fail();
  ut_success();
  ut_print();
  ft_putstr("test libft\n");
  ft_start();
  return (0);
}
