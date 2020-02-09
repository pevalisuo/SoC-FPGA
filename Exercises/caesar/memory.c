//
// memory.c    Petri Välisuo, 1.2.2020
//
// A program for testing the memory allocation and memory copy and
// Ceaser encryption.
//
// Compile with
//   gcc memory.c -o memory
//
// Example usage
//   ./memory koe.txt 2
// 


#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// Define a constant. This is maximum number of characters
// we can process 
#define N 1024


// The caeaser encryption function
// Inputs:
//   x : the character to be processed
//   n : the encryption key
// Returns:
//   The encrypted version of x, or 0 if x is not character
//
// Note: 'A' is the ASCII code of A-character = 65
//       % is the modulo operator in C
//      
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

// THe main program
// Arguments:
//   argv[0] : The name of the module (standard)
//   argv[1] : The name of the input file, optional, default="data.csv"
//   argg[2] : The encrpytion key, optional, default=0
int main(int argc, char *argv[]) {

  // Reserve space for N+1 characters from stack
  char data[N+1]="";

  // Define a pointer to the  another memory location, in stack
  // Initialize it to NULL pointer for safety
  char *toinenData=NULL;

  // Define the rest of the variables
  int i=0;
  char merkki='\0';
  char *defaultFilename="data.csv";
  char *filename=defaultFilename;
  int n=0;

  // If command line arguments are given, use them, otherwise use
  // default values
  if(argc>1) {
    filename=argv[1];
  }
  if(argc>2) {
    n=atoi(argv[2]);
  }

  // Some debugging output
  printf("The size of the char is %ld bytes\n", sizeof(char));
  printf("We need %ld bytes of memory\n", N*sizeof(char));
  printf("The encryption key is %d. \n\n", n);

  // Open the input data file, exit with an error code if it does
  // not succeed
  // -----------------------------------------------
  printf("Read the file: %s ....", filename);
  FILE *fid = fopen(filename, "r");
  if(!fid) {
    printf("Cannot open file %s. Exiting!\n", filename);
    exit(EXIT_FAILURE);
  }

  // Read the file in a while loop, until end of file is reached
  // But it is also very important to stop reading, if there is
  // more data in the file what we have allocated space for it.
  // Therefore the break. We can only allocate pre-defined amount
  // of data from stack. If you read more than allocated, the
  // program probably crashes.
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

  // Then reserve another memory location for the results in heap
  // and save the memory address to the toinenData pointer.
  // The size of dynamic allocation can be defined at run time, so we
  // do not need to allocate more memory than necessary.
  // The memory pointer from malloc is alway as type (void *) so it
  // has to be typecasted to (char *) type in this case. If memory
  // allocation fails, we close the program with and error code.
  // -----------------------------------------------
  printf("Reserve memory from heap\n");
  if(!(toinenData=(char *) malloc(i * sizeof(char)))) {
    printf("Memory allocation failed, Exiting!");
    exit(EXIT_FAILURE);
  }

  // There are ready made funftions for copying data, which
  // we could use, but this time we need to do the caser
  // encryption and not just copy the data
  // -----------------------------------------------
  //printf("Copy data with memcpy\n");
  //memcpy(toinenData, data, i*sizeof(char));

  // So here we copy the data to the destination memor location
  // from the source location, doing the encryption while copying
  // Again be carefull not to write more data than you have space,
  // but now there is not problem, since we have reserved i characters
  // -----------------------------------------------
  printf("Copy data with own function\n");
  for(int j=0; j<i; j++) {
    toinenData[j] = caesar(data[j], n);
  }

  // To test that the data is correctly copied and encrypted
  // we just dump the data on the screen. It could be also
  // properly compared with correct output if we had created
  // a correct output vector. In more complex cases that would
  // definitely be a better idea.
  // -----------------------------------------------
  printf("Testing the result \n [ ");
  for(int j=0; j<i; j++) {
    printf("%c, ", toinenData[j]);
  }
  printf(" ]\n");

  // -----------------------------------------------
  printf("The end\n");
}
