#include "unit_test.h"

void ut_success(void)
{
  printf("%s", "\033[32m+");
  printf("%s", "\033[0m");
  return;
}
