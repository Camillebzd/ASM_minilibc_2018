/*
** EPITECH PROJECT, 2019
** main test
** File description:
** main test
*/

#include <stdlib.h>
#include <unistd.h>
#include <stdio.h>
#include <string.h>

int my_strncmp(const char *str1, const char *str2, size_t n);

int main(void)
{
/*    char str1[15];
    char str2[15];
    int ret;

    strcpy(str1, "abcd");
    strcpy(str2, "ABCDEF");
    ret = strncmp(str1, str2, 4);
    if(ret < 0) {
        printf("str1 is less than str2\n");
    } else if(ret > 0) {
      printf("str2 is less than str1\n");
    } else {
      printf("str1 is equal to str2\n");
    }
    printf("%d\n", strlen("COUCOU"));

    const char src[50] = "http://www.tutorialspoint.com";
    char dest[50];
    strcpy(dest,"Heloooo!!");
    printf("Before memcpy dest = %s\n", dest);
    memcpy(dest, src, strlen(src)+1);
    printf("After memcpy dest = %s\n", dest);

    const char haystack[20] = "TutorialsPoint";
    const char needle[10] = "Point";
    char *blbl;

    blbl = strstr(haystack, needle);

    printf("The substring is: %s\n", blbl);
*/
/*    char dest[] = "oldstring";
   const char src[]  = "newstring";

   printf("Before memmove dest = %s, src = %s\n", dest, src);
   memmove(dest, src, 9);
   if (dest[0] == '\0')
    printf("YA RIEN DEDANS\n");
   printf("After memmove dest = %s, src = %s\n", dest, src);

   return(0);*/
//   printf("%s\n", rindex("teste", 't'));
/*   const char str1[] = "abcde2fghi3jk4l";
   const char str2[] = "34";
   char *ret;

   ret = strpbrk(str1, str2);
   if(ret) {
      printf("First matching character: %c\n", *ret);
   } else {
      printf("Character not found");
   }
    return(0);*/
/*    int len;
   const char str1[] = "ABCDEF4960910";
   const char str2[] = "013";

   len = strcspn(str1, str2);

   printf("First matched character is at %d\n", len + 1);*/
   
   char str1[15];
   char str2[15];
   int ret;


   strcpy(str1, "abcdef");
   strcpy(str2, "ABCDEF");

   ret = strcasecmp(str1, str2);

   if(ret < 0) {
      printf("str1 is less than str2");
   } else if(ret > 0) {
      printf("str2 is less than str1");
   } else {
      printf("str1 is equal to str2");
   }
   
   return(0);

   return(0);
}