#include <string.h>
#include <stdio.h>
char *find_strings[]= {
#include "find_strings_50.dat"
};
char *search_strings[]= {
#include "search_strings_50.dat"
};
char  result[3294];
void main() __attribute__((section(".text.main")));
/*
**  Call this with the string to locate to initialize the table
*/
char *init_search(char *string, unsigned int *table, unsigned int *len){
  unsigned int i;
  *len = strlen(string);
  for (i = 0; i <= 255; i++)
    table[i] = *len;
  for (i = 0; i < *len; i++)
    table[(unsigned char)string[i]] = *len - i - 1;
  return string;
}
/*
**  Call this with a buffer to search
*/
char *strsearch(const char *string, unsigned int *table, unsigned int len, char *findme){
  unsigned int shift;
  unsigned int pos = len - 1;
  char        *here;
  unsigned int limit=strlen(string);
  while (pos < limit){
    while (pos < limit &&
          (shift = table[(unsigned char)string[pos]]) > 0){
      pos += shift;
    }
    if (0 == shift){
      if (0 == strncmp(findme, here = (char *)&string[pos-len+1], len)){
        return(here);
      }
      else  pos++;
    }
  }
  return NULL;
}
void main(){
  char        *here, *findme, s[256];
  unsigned int table[256], len, i;
  for (i = 0; find_strings[i]; i++){
    findme = init_search(find_strings[i], table, &len);
    here = strsearch(search_strings[i], table, len, findme);
    sprintf(s, "\"%s\" is%s in \"%s\"", find_strings[i],
            here ? "" : " not", search_strings[i]);
    strcat(result,s);
    if (here){
      sprintf(s, " [\"%s\"]", here);
      strcat(result,s);
    }
    strcat(result,"\n");
  }
}

