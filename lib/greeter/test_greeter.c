#include "greeter.h"
#include <stdio.h>

// Build using: gcc -o test_greeter test_greeter.c ./greeter.so
// Run test: ./test_greeter

int main()
{
  char *greeting = Greet("Munjal");
  printf("%s", greeting);

  return 0;
}
