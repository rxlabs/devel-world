#include <stdio.h>

void untyped() {
  int x =
      "not an int"; // type error: incompatible pointer to integer conversion
  printf("%d\n", x);
}
