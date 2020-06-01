#include <stdio.h>
int main() {
   // printf() displays the string inside quotation
   int *a;

   a = (int *)malloc(10 * sizeof(int));
   printf("Hello, World!");
   free(a);
   return 0;
}
