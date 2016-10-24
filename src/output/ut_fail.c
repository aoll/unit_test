#include "unit_test.h"

void ut_fail(void)
{
  printf("%s", "\033[31m-");
  printf("%s", "\033[0m");
  return;
}
