#include "unit_test.h"

int   main(void)
{
  printf("%s\n", "hello unit_test get started");
  ut_fail();
  ut_success();
  return (0);
}
