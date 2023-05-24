#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include <math.h>

#define maxFileLength 100

int main(int argc, char* argv[]) {
  // Handle the case that the number of arguments passed is not 2
  if (argc != 2) {
    printf("Error: Number of command line arguments passed is not 2.\n");
    return 0;
  }
  
  // Open the file
  FILE *file = fopen(argv[1], "r");

  // Handle the case that the file is not found
  if (file == NULL) {
    printf("Error: File not found.\n");
    return 0;
  }

  // Read contents of the file and store them into an array of characters
  char content[maxFileLength];
  int total = 0;
  while (fgets(content, sizeof(content), file)){
    total++;
  }

  // Close and reopen the file to prevent compile errors
  fclose(file);
  file = fopen (argv[1], "r");

  char **inputVariables;
  char **outputVariables;
  char **temporaryVariables = malloc(sizeof(char*)*total); 
  
  int inputIndex = 0;
  int inputLength = 0;
  int outputIndex = 0;
  int outputLength = 0;
  int length = 0;
  int count = 1;
    
  for (int i = 0; i < total; i++) {
    temporaryVariables[i] = malloc((10) * sizeof(char));
  }
    
  while (count <= 2 && fgets(content, sizeof(content), file)) {
    size_t lengthOfString = strlen(content);
    int counter = 1;
    char words[maxFileLength];

    if (lengthOfString > 0 && content[lengthOfString - 1] == '\n') {
      content[--lengthOfString] = '\0';
    } 

    strcpy(words, content);
    char* word = strtok(words, " ");

    while (word) {
      if (counter == 2) {
  if (count == 1) {
    inputLength = atoi(word);
    inputVariables  = malloc(sizeof(char*) * inputLength); 
    for (int i = 0; i <= inputLength - 1; i++) {
      inputVariables[i] = malloc((10) * sizeof(char));
    }
  }
  else if (count == 2) {
    outputLength = atoi(word);
    outputVariables = malloc(sizeof(char*) * outputLength);
    for (int i = 0; i < outputLength; i++) {
      outputVariables[i] = malloc((10) * sizeof(char));
    }
  }
      }
      else if (counter >= 3) {
  if (count == 1) {
    strcpy(inputVariables[inputIndex], word);
    inputIndex = inputIndex + 1;;
  }
  else if (count == 2) {
    strcpy(outputVariables[outputIndex], word);
    outputIndex = outputIndex + 1;
  }
      }
      counter += 1;
      word = strtok(NULL, " ");
    }
    count += 1;
  }
  
  int** truthTable = malloc((int)pow(2, inputIndex) * sizeof(int*));
  for (int i = 0; i < (int)pow(2, inputIndex); i++) { 
    truthTable[i] = malloc((inputIndex + outputIndex) * sizeof(int));
  }

  int** result = malloc((int)pow(2, inputIndex) * sizeof(int*));
  int i;
  int j;
  int y;
  int binary[32]; 
  
  for (i = 0; i < (int)pow(2, inputIndex); i++) {
    result[i] = malloc((total) * sizeof(int));
  }

  for (j = 0; j < (int)pow(2, inputIndex); j++) {
    y = j;
    int k = 0;
    for (k = 0; k <= 31; k++) {
      binary[k] = 0;
    }
    int i = 0; 
    for (i = 0; y > 0; i++) {    
      binary[31 - i] = y % 2;
      y = y / 2;    
    } 
    for(int i = inputIndex - 1; i >= 0; i--) {
      truthTable[j][i] = binary[32 - inputIndex + i];
    }
  }

  while (fgets(content, sizeof(content), file)) {
    size_t lengthOfString = strlen(content);
    if (lengthOfString > 0 && content[lengthOfString - 1] == '\n') {
      content[--lengthOfString] = '\0';
    }
    
    int counter2 = 1;
    int ctr1 = -1;
    int ctr2 = -1;
    int tempctr1 = -1;
    int tempctr2 = -1;

    char words[maxFileLength];
    strcpy(words, content);
    char* word = strtok(words, " ");
    
    char character1[10];
    char character2[10];
    char characterOutput[10]; 
    char f[5];

    while (word) {
      if (counter2 == 1) {
  strcpy(f, word);
      }
      else if (counter2 == 2) {
  strcpy(character1, word);
      }
      else if (counter2 == 3) {
  strcpy(character2, word);
      }
      else if (counter2 == 4) {
  strcpy(characterOutput, word);
      }
      counter2 += 1;
      word = strtok(NULL, " ");
    }

    for (int i = 0; i < inputIndex; i++) {
      if ((strcmp(character1, inputVariables[i]) == 0)) {
  ctr1 = i;
      }
      if ((strcmp(character2, inputVariables[i]) == 0)) {
  ctr2 = i;
      }
    }
        
    for (int i = 0; i < length; i++) {
      if ((strcmp(character1, temporaryVariables[i]) == 0)) {
  tempctr1 = i;
      }
      if ((strcmp(character2, temporaryVariables[i]) == 0)) {
  tempctr2 = i;
      }
    }
    
    for (int i = 0; i < (int)pow(2, inputIndex); i++) {
      int reverse = 1;
      int place = 1;
      int valueAtIndex = -1;
      int a = -1;
      int b = -1;      
      if (ctr1 == -1) {
  a = result[i][tempctr1];
      }
      else {
  a = truthTable[i][ctr1];
      }
      if (ctr2 == -1 && (strcmp(f, "NOT") != 0)) {
  b = result[i][tempctr2];
      }
      else if (strcmp(f, "NOT") != 0) {
  b = truthTable[i][ctr2];
      }
      if (strcmp(f, "NOT") == 0) {
  valueAtIndex = !(a);
  strcpy(characterOutput, character2);
      }
      else if (strcmp(f, "AND") == 0) {
  valueAtIndex = (a)&(b);
      }
      else if (strcmp(f, "NAND") == 0) {
  valueAtIndex = !((a)&(b));
      }
      else if (strcmp(f, "OR") == 0) {
  valueAtIndex = (a)|(b);
      }
      else if (strcmp(f, "NOR") == 0) {
  valueAtIndex = !((a)|(b));
      }
      else if (strcmp(f, "XOR") == 0) {
  valueAtIndex = (a) ^ (b);
      }
      
      for (int j = 0; j < outputIndex; j++) {
  if ((strcmp(characterOutput, outputVariables[j]) == 0)) {
    truthTable[i][inputIndex + j] = valueAtIndex;
    reverse = 0;
  }
      }

      if (reverse) { 
  for (int j = 0; j < length; j++) {
    if ((strcmp(characterOutput, temporaryVariables[j]) == 0)) {
      result[i][j] = valueAtIndex;
      place = 0;
    }
  }
      }

      if (place && reverse) {
  strcpy(temporaryVariables[length], characterOutput);
  result[i][length] = valueAtIndex;
  length += 1;
      }
    }    
  }
  
  for (int i = 0; i < (int)pow(2, inputIndex); i++) {
    for (int j = 0; j < inputIndex + outputIndex; j++) {
      printf("%d ", truthTable[i][j]);
    }
    printf("\n");
  }

  for (int i = 0; i < pow(2, inputIndex); i++) {
     free(result[i]);
     }
  
  for (int i = 0; i < pow(2, inputIndex); i++) {
    free(truthTable[i]);
    }

  for (int i = 0; i < inputIndex; i++) {
    free(inputVariables[i]);
    }

  for (int i = 0; i < outputIndex; i++) {
    free(outputVariables[i]);
    }
  
  for (int i = 0; i < total; i++) {
    free(temporaryVariables[i]);
    }
  
  free(result);
  free(truthTable);
  free(inputVariables);
  free(outputVariables);
  free(temporaryVariables);
}
