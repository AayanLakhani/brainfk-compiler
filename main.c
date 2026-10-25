
#include <stdio.h>


int main(int argc, char** argv){
    char command;
    while((command = getchar()) != EOF){
        printf("Hello: %c\n", command);
    }

    return 0;
}
