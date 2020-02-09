#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define N 1024

char caesar(char x, int n) {
    if ((x>='A') &&  (x<='Z')) {
      return(((x-'A')+n)%('Z'-'A'+1)+'A');
    }
    else if ((x>='a') &&  (x<='z')) {
      return(((x-'a')+n)%('z'-'a'+1)+'a');
    }
    else
      return 0;
}

int main(int argc, char *argv[]) {

  char data[N]="";
  char *toinenData=NULL;
  int i=0;
  char merkki='\0';
  char *defaultFilename="data.csv";
  char *filename=defaultFilename;
  int n=0;

  if(argc>1) {
    filename=argv[1];
  }
  if(argc>2) {
    n=atoi(argv[2]);
  }

  printf("The size of the char is %ld bytes\n", sizeof(char));
  printf("We need %ld bytes of memory\n", N*sizeof(char));
  printf("The encryption key is %d. \n\n", n);

  // -----------------------------------------------
  printf("Read the file: %s ....", filename);
  FILE *fid = fopen(filename, "r");
  if(!fid) {
    printf("Cannot open file %s. Exiting!\n", filename);
    exit(EXIT_FAILURE);
  }

  while(!feof(fid)) {
    fscanf(fid, "%c", &merkki);
    data[i++]=merkki;
    if(i>=N) {
      printf("Too much data. Skipping the rest\n");
      break;
    }
  }
  fclose(fid);
  printf("read %d characters\n", i);

  // -----------------------------------------------
  printf("Reserve memory from heap\n");
  if(!(toinenData=(char *) malloc(i * sizeof(char)))) {
    printf("Memory allocation failed, Exiting!");
    exit(EXIT_FAILURE);
  }

  // -----------------------------------------------
  //printf("Copy data with memcpy\n");
  //memcpy(toinenData, data, i*sizeof(char));

  // -----------------------------------------------
  printf("Copy data with own function\n");
  for(int j=0; j<i; j++) {
    toinenData[j] = caesar(data[j], n);
  }

  // -----------------------------------------------
  printf("Testing the result \n [ ");
  for(int j=0; j<i; j++) {
    printf("%c, ", toinenData[j]);
  }
  printf(" ]\n");

  // -----------------------------------------------
  printf("The end\n");
}
