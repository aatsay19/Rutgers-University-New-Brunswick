#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define rows 100
#define cols 100

int read(char *x);
void print(char *x);
void move(char *x, char *y);
void add(char *x, char *y);
void subtract(char *x, char *y);
void multiply(char *x, char *y);
void divide(char *x, char *y);
int jump(char *x);
int jumpEqual(char *x, char *y, char *z);
int jumpLesser(char *x, char *y, char *z);
int jumpGreater(char *x, char *y, char *z);
int jumpNotEqual(char *x, char *y, char *z);
int jumpLesserEqual(char *x, char *y, char *z);
int jumpGreaterEqual(char *x, char *y, char *z);

int *ax;
int *bx;
int *cx;
int *dx;

int main(int argc, char* argv[])
{
    if (argc != 2) {
      printf("Two arguments are needed to run this program.\n");
      return 0;
    }

    char arr[rows][cols];
    int i = 0;
    int end = 0;
    FILE *program = fopen(argv[1], "r");
    if (program == NULL) {
      printf("File not found\n");
      return 1;
    }

    while (fgets(arr[i], cols, program)) {
      arr[i][strlen(arr[i]) - 1] = '\0';
      i++;
    }

    end = i;
    fclose(program);

    for (i = 0; i < end; ++i) {
      char str[20];
      strcpy(str, arr[i]);
      char *p = strtok(str, " ");
      while (p != NULL) {
        printf("%s\n", p);
        if (strcmp(p, "read") == 0) {
          p = strtok(NULL, " ");
          char *x = p;
          read(x);
        }
        if (strcmp(p, "print") == 0) {
          p = strtok(NULL, " ");
          char *x = p;
          print(x);
        }
        if (strcmp(p, "mov") == 0) {
          p = strtok(NULL, " ");
          char *x = p;
          p = strtok(NULL, " ");
          char *y = p;
          move(x, y);
        }
        if (strcmp(p, "add") == 0) {
          p = strtok(NULL, " ");
          char *x = p;
          p = strtok(NULL, " ");
          char *y = p;
          add(x, y);
        }
        if (strcmp(p, "sub") == 0) {
          p = strtok(NULL, " ");
          char *x = p;
          p = strtok(NULL, " ");
          char *y = p;
          subtract(x, y);
        }
        if (strcmp(p, "mul") == 0) {
          p = strtok(NULL, " ");
          char *x = p;
          p = strtok(NULL, " ");
          char *y = p;
          multiply(x, y);
        }
        if (strcmp(p, "div") == 0) {
          p = strtok(NULL, " ");
          char *x = p;
          p = strtok(NULL, " ");
          char *y = p;
          divide(x, y);
        }
        if (strcmp(p, "jmp") == 0) {
          p = strtok(NULL, " ");
          char *x = p;
          jump(x);
        }
        if (strcmp(p, "je") == 0) {
          p = strtok(NULL, " ");
          char *x = p;
          p = strtok(NULL, " ");
          char *y = p;
          p = strtok(NULL, " ");
          char *z = p;
          jumpEqual(x, y, z);
        }
        if (strcmp(p, "jne") == 0) {
          p = strtok(NULL, " ");
          char *x = p;
          p = strtok(NULL, " ");
          char *y = p;
          p = strtok(NULL, " ");
          char *z = p;
          jumpNotEqual(x, y, z);
        }
        if (strcmp(p, "jg") == 0) {
          p = strtok(NULL, " ");
          char *x = p;
          p = strtok(NULL, " ");
          char *y = p;
          p = strtok(NULL, " ");
          char *z = p;
          jumpGreater(x, y, z);
        }
        if (strcmp(p, "jge") == 0) {
          p = strtok(NULL, " ");
          char *x = p;
          p = strtok(NULL, " ");
          char *y = p;
          p = strtok(NULL, " ");
          char *z = p;
          jumpGreaterEqual(x, y, z);
        }
        if (strcmp(p, "jl") == 0) {
          p = strtok(NULL, " ");
          char *x = p;
          p = strtok(NULL, " ");
          char *y = p;
          p = strtok(NULL, " ");
          char *z = p;
          jumpLesser(x, y, z);
        }
        if (strcmp(p, "jle") == 0) {
          p = strtok(NULL, " ");
          char *x = p;
          p = strtok(NULL, " ");
          char *y = p;
          p = strtok(NULL, " ");
          char *z = p;
          jumpLesserEqual(x, y, z);
        }
        else {
          p = strtok(NULL, " ");
        }
      }
    }

	  // printf("The contents of the file are:\n\n");
    // for (i = 0; i < end; ++i) {
    //   printf("%s\n", arr[i]);
    // }
    // printf("\n");

    return 0;
}

int read(char *x) {
  if (strcmp(x, "ax") == 0) {
    return *ax;
  }
  else if (strcmp(x, "bx") == 0) {
    return *bx;
  }
  else if (strcmp(x, "cx") == 0) {
    return *cx;
  }
  else if (strcmp(x, "dx") == 0) {
    return *dx;
  }
  return 0;
}

void print(char *x) {
  if (strcmp(x, "ax") == 0) {
    printf("%d", *ax);
  }
  else if (strcmp(x, "bx") == 0) {
    printf("%d", *bx);
  }
  else if (strcmp(x, "cx") == 0) {
    printf("%d", *cx);
  }
  else if (strcmp(x, "dx") == 0) {
    printf("%d", *dx);
  }
  else {
    printf("%d", atoi(x));
  }
}

void move(char *x, char *y) {
  if (strcmp(y, "ax") == 0) {
    *ax = atoi(y);
  }
  if (strcmp(y, "bx") == 0) {
    *bx = atoi(y);
  }
  if (strcmp(y, "cx") == 0) {
    *cx = atoi(y);
  }
  if (strcmp(y, "dx") == 0) {
    *dx = atoi(y);
  }
}

void add(char *x, char *y) {
  if (strcmp(y, "ax") == 0) {
    *ax += atoi(y);
  }
  if (strcmp(y, "bx") == 0) {
    *bx += atoi(y);
  }
  if (strcmp(y, "cx") == 0) {
    *cx += atoi(y);
  }
  if (strcmp(y, "dx") == 0) {
    *dx += atoi(y);
  }
}

void subtract(char *x, char *y) {
  if (strcmp(y, "ax") == 0) {
    *ax -= atoi(y);
  }
  if (strcmp(y, "bx") == 0) {
    *bx -= atoi(y);
  }
  if (strcmp(y, "cx") == 0) {
    *cx -= atoi(y);
  }
  if (strcmp(y, "dx") == 0) {
    *dx -= atoi(y);
  }
}

void multiply(char *x, char *y) {
  if (strcmp(y, "ax") == 0) {
    *ax *= atoi(y);
  }
  if (strcmp(y, "bx") == 0) {
    *bx *= atoi(y);
  }
  if (strcmp(y, "cx") == 0) {
    *cx *= atoi(y);
  }
  if (strcmp(y, "dx") == 0) {
    *dx *= atoi(y);
  }
}

void divide(char *x, char *y) {
  if (strcmp(y, "ax") == 0) {
    *ax /= atoi(y);
  }
  if (strcmp(y, "bx") == 0) {
    *bx /= atoi(y);
  }
  if (strcmp(y, "cx") == 0) {
    *cx /= atoi(y);
  }
  if (strcmp(y, "dx") == 0) {
    *dx /= atoi(y);
  }
}

int jump(char *x) {
  return 0;
}

int jumpEqual(char *x, char *y, char *z) {
  return 0;
}

int jumpLesser(char *x, char *y, char *z) {
  return 0;
}

int jumpGreater(char *x, char *y, char *z) {
  return 0;
}

int jumpNotEqual(char *x, char *y, char *z) {
  return 0;
}

int jumpLesserEqual(char *x, char *y, char *z) {
  return 0;
}

int jumpGreaterEqual(char *x, char *y, char *z) {
  return 0;
}
