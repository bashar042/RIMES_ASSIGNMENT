#include <stdio.h>
#include <stdlib.h>

int main ()
{

  char n1[1000], n2[1000], *t1, *t2;
  double r1, r2, res;
  while (1)
    {
      printf ("Input Number 1: ");
      gets (n1);
      printf ("Input Number 2: ");
      gets (n2);
      r1 = strtod (n1, &t1);
      r2 = strtod (n2, &t2);
      res = r1 + r2;
      printf ("Sum of Numbers: %.3f\n--------------------\n", res);
    }

  return 0;
}