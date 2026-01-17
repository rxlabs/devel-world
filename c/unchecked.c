#include <stdio.h>

void unchecked() {
  int x =
      "not an int";
  printf("%d\n", x);
}
