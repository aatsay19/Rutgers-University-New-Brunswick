#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<math.h>

// Global Variables
int memoryReads;
int memoryWrites;
int cacheHits;
int cacheMisses;
unsigned long int count;
struct line** cache;

// Create structure to represent the values of each string in each line of given file
typedef struct line {
  unsigned long int tag;
  int valid;
  unsigned long int time;
}
// Struct declaration allocates memory for this structure
line;

// Method declarations before main method so that these methods can be called and used from main method
line** createCache(int setNumber, int associativity);
void emptyCache(int setNumber, int associativity);
void read(unsigned long int tagindex, unsigned long int setindex, int associativity);
void write(unsigned long int tagindex, unsigned long int setindex, int associativity);
void read2(unsigned long int tagindex, unsigned long int setindex, int associativity);
void write2(unsigned long int tagindex, unsigned long int setindex, int associativity);

// Main method begins here:
int main(int argc, char** argv) {
  int cacheSize = atoi(argv[1]);
  int blockSize = atoi(argv[4]);
  int n; 
  int setNumber;
  int associativity;
  
  int b;
  int s;
  
  char task;
  unsigned long int address;
  unsigned long int setMask;
  unsigned long int tagIndex;
  unsigned long int setIndex;

  if (argv[3][0] == 'f') { // Replace policy is FIFO
    // Open file
    FILE* file;
    file = fopen(argv[5], "r");

    // Handle the scenario where file is not found
    if (file == NULL) {
      printf("Error: File not found.\n");
      return 0;
    }

    // Determine set number based on associativity of cache 
    if (argv[2][0] == 'd') { // Direct-mapped cache (automatically has associativity of 1)
      associativity = 1;
      setNumber = cacheSize / blockSize;
    }
    else if (argv[2][5] != ':') { // Fully associative cache (automatically has set number of 1)
      setNumber = 1;
      associativity = cacheSize / blockSize;
    }
    else { // n-way associative cache where n is a power of 2
      sscanf(argv[2], "assoc:%d", &n);
      associativity = n;
      setNumber = cacheSize / blockSize / n;
    }
    
    // Calculate and mask the bits in each index:
    b = log(blockSize) / log(2);
    s = log(setNumber) / log(2);
    setMask = ((1 << s) - 1);
    
    // Update cache
    cache = createCache(setNumber, associativity);

    // Traverse through trace file
    while (fscanf(file, "%*x: %c %lx", &task, &address) == 2) {
      // Calculate index
      setIndex = (address >> b) & setMask;
      tagIndex = address >> (b + s);

      // Perform action based on whether memory access trace is a read or a write
      if (task == 'R') {
	read(tagIndex, setIndex, associativity);
      }
      else if (task == 'W') {
	write(tagIndex, setIndex, associativity);
      }
    }

    // Close file
    fclose(file);
    
    // Print and then empty the cache
    printf("Memory reads: %d\nMemory writes: %d\nCache hits: %d\nCache misses: %d\n", memoryReads, memoryWrites, cacheHits, cacheMisses);
    emptyCache(setNumber, associativity);
  }
  
  else if (argv[3][0] == 'l') {	// Replace policy is LRU
    // Open file
    FILE* file;
    file = fopen(argv[5], "r");

    // Handle the scenario where file is not found  
    if (file == NULL) {
      printf("Error: File not found.\n");
      return 0;
    }

    // Determine set number based on associativity of cache
    if (argv[2][0] == 'd') { // Direct-mapped cache (automatically has associativity of 1)
      associativity = 1;
      setNumber = cacheSize / blockSize;
    }
    else if (argv[2][5] != ':') { // Fully Associative cache (automatically has set number of 1)
      setNumber = 1;
      associativity = cacheSize / blockSize;
    }
    else { // n-way associative cache where n is a power of 2
      sscanf(argv[2], "assoc:%d", &n);
      associativity = n;
      setNumber = cacheSize / blockSize / n;
    }
    
    // Calculate and mask the bits in each index
    b = log(blockSize) / log(2);
    s = log(setNumber) / log(2);
    setMask = ((1 << s) - 1);
    
    // Update cache
    cache = createCache(setNumber, associativity);

    // Traverse through trace file
    while (fscanf(file, "%*x: %c %lx", &task, &address) == 2) {
      // Calculate index
      setIndex = (address >> b) & setMask;
      tagIndex = address >> (b + s);

      // Perform action based on whether memory acces trace is a read or write
      if (task == 'R') {	
	read2(tagIndex, setIndex, associativity);
      }
      else if (task == 'W') {
	write2(tagIndex, setIndex, associativity);
      }
    }

    // Close file
    fclose(file);
    
    // Print and then empty the cache
    printf("Memory reads: %d\nMemory writes: %d\nCache hits: %d\nCache misses: %d\n", memoryReads, memoryWrites, cacheHits, cacheMisses);
    emptyCache(setNumber, associativity);	
  }

  else { // Replace policy is neither FIFO or LRU
    printf("Error: Specified replace policy is neither LRU nor FIFO./n");
  }
  return 0;
}

// Creates and allocates memory for the cache
line** createCache(int setNumber, int associativity) {
  int i, j;
  cache = (line**)malloc(setNumber * sizeof(line*));
  for (i = 0; i < setNumber; i++) {
    cache[i] = (line*)malloc((associativity) * sizeof(line));
  }
  for (i = 0; i < setNumber; i++) {
    for (j = 0; j < associativity; j++) {
      cache[i][j].valid = 0;
    }
  }
  return cache;
}

// Empties the contents of the cache
void emptyCache(int setNumber, int associativity) {
  int i, j;
  for (i = 0; i < setNumber; i++) {
    for (j = 0; j < associativity; j++) {
      cache[i][j].tag = 0;
      cache[i][j].valid = 0;
      cache[i][j].time = 0;
    }
  }
  memoryReads = 0;
  memoryWrites = 0;
  cacheHits = 0;
  cacheMisses = 0;
  count = 0;
}


void read(unsigned long int tagindex, unsigned long int setindex, int associativity) {
  int i, j, min;
  for (i = 0; i < associativity; i++) {
    if (cache[setindex][i].valid == 0) {
      cacheMisses++;
      memoryReads++;
      count++;
      cache[setindex][i].valid = 1;
      cache[setindex][i].tag = tagindex;
      cache[setindex][i].time = count;
      return;
    }
    else {	
      if (cache[setindex][i].tag == tagindex) {
	cacheHits++;
	return;
      }			
      if (i == (associativity - 1)) {
	cacheMisses++;
	memoryReads++;		
	min = 0;
	for (j = 0; j < associativity; j++) {
	  if (cache[setindex][j].time <= cache[setindex][min].time) {
	    min = j;
	  }	
	}		
	cache[setindex][min].valid = 1;
	cache[setindex][min].tag = tagindex;
	count++;
	cache[setindex][min].time = count;
	return;
      }		
    }		
  }
  printf("Error.\n");
  return;
}


void write(unsigned long int tagindex, unsigned long int setindex, int associativity) {
  int i, j, min;
  for (i = 0; i < associativity; i++) {
    if (cache[setindex][i].valid == 0) {
      cacheMisses++;
      memoryReads++;
      memoryWrites++;
      count++;
      cache[setindex][i].valid = 1;
      cache[setindex][i].tag = tagindex;
      cache[setindex][i].time = count;
      return;
    }
    else {	
      if (cache[setindex][i].tag == tagindex) {
	cacheHits++;
	memoryWrites++;
	return;
      }			
      if (i == (associativity - 1)) {
	cacheMisses++;
	memoryReads++;
	memoryWrites++;
	min = 0;
	for (j = 0; j < associativity; j++) {
	  if (cache[setindex][j].time <= cache[setindex][min].time) {
	    min = j;
	  }	
	}		
	cache[setindex][min].valid = 1;
	cache[setindex][min].tag = tagindex;
	count++;
	cache[setindex][min].time = count;
	return;
      }		
    }		
  }
  printf("Error.\n");
  return;
}


void read2(unsigned long int tagindex, unsigned long int setindex, int associativity) {
  int i, j, min;
  for (i = 0; i < associativity; i++) {
    if (cache[setindex][i].valid == 0) {
      cacheMisses++;
      memoryReads++;
      count++;
      cache[setindex][i].valid = 1;
      cache[setindex][i].tag = tagindex;
      cache[setindex][i].time = count;	
      return;
    }
    else {	
      if (cache[setindex][i].tag == tagindex) {
	cacheHits++;
	count++;
	cache[setindex][i].time = count;
	return;
      }			
      if (i == (associativity - 1)) {
	cacheMisses++;
	memoryReads++;		
	min = 0;
	for (j = 0; j < associativity; j++) {			
	  if (cache[setindex][j].time <= cache[setindex][min].time) {
	    min = j;
	  }	
	}		
	cache[setindex][min].valid = 1;
	cache[setindex][min].tag = tagindex;
	count++;
	cache[setindex][min].time = count;
	return;
      }		
    }		
  }
  printf("Error.\n");
  return;
}


void write2(unsigned long int tagindex, unsigned long int setindex, int associativity) {
  int i, j, min;
  for (i = 0; i < associativity; i++) {
    if (cache[setindex][i].valid == 0) {
      cacheMisses++;
      memoryReads++;
      memoryWrites++;
      count++;
      cache[setindex][i].valid = 1;
      cache[setindex][i].tag = tagindex;
      cache[setindex][i].time = count;
      return;
    }
    else {
      if (cache[setindex][i].tag == tagindex) {
	cacheHits++;
	memoryWrites++;
	count++;
	cache[setindex][i].time = count;
	return;
      }			
      if (i == (associativity - 1)) {
	cacheMisses++;
	memoryReads++;
	memoryWrites++;
	min = 0;
	for (j = 0; j < associativity; j++) {
	  if (cache[setindex][j].time <= cache[setindex][min].time) {
	    min = j;
	  }	
	}		
	cache[setindex][min].valid = 1;
	cache[setindex][min].tag = tagindex;
	count++;
	cache[setindex][min].time = count;
	return;
      }	
    }
  }
  printf("Error.\n");
  return;
}
