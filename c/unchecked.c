#include <stdio.h>

void unchecked() {
  int x =
      "not an int"; // type error: incompatible pointer to integer conversion
  printf("%d\n", x);
}
