#include <stdio.h>


int main(int argc, char** argv){
    char command;
    int index = 0;
    int reg_counter = 1;
    
    printf("declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg)\ndeclare i32 @putchar(i32)\n\ndefine i32 @main() {\n%%arr = alloca [30000 x i8]\ncall void @llvm.memset.p0.i64(ptr %%arr, i8 0, i64 30000, i1 false)\n%%idx = alloca i32\nstore i32 0, i32* %%idx\n");
    while((command = getchar()) != EOF){
        switch (command) {
            case '+':
                printf("%%%d = load i32, i32* %%idx\n%%arrayidx%d = getelementptr inbounds [30000 x i8], [30000 x i8]* %%arr, i32 0, i32 %%%d\n", reg_counter, reg_counter, reg_counter);
                reg_counter++;
                printf("%%%d = load i8, i8* %%arrayidx%d\n", reg_counter, (reg_counter - 1));
                reg_counter++;
                printf("%%%d = add i8 %%%d, 1\nstore i8 %%%d, i8* %%arrayidx%d\n", reg_counter, (reg_counter - 1), reg_counter, (reg_counter - 2));
                reg_counter++;
                break;

            case '-':
                printf("%%%d = load i32, i32* %%idx\n%%arrayidx%d = getelementptr inbounds [30000 x i8], [30000 x i8]* %%arr, i32 0, i32 %%%d\n", reg_counter, reg_counter, reg_counter);
                reg_counter++;
                printf("%%%d = load i8, i8* %%arrayidx%d\n", reg_counter, (reg_counter - 1));
                reg_counter++;
                printf("%%%d = sub i8 %%%d, 1\nstore i8 %%%d, i8* %%arrayidx%d\n", reg_counter, (reg_counter - 1), reg_counter, (reg_counter - 2));
                reg_counter++;
                break;

            case '.':
                printf("%%%d = load i32, i32* %%idx\n%%arrayidx%d = getelementptr inbounds [30000 x i8], [30000 x i8]* %%arr, i32 0, i32 %%%d\n", reg_counter, reg_counter, reg_counter);
                reg_counter++;
                printf("%%%d = load i8, i8* %%arrayidx%d\n%%extended%d = zext i8 %%%d to i32\n%%result%d = call i32 @putchar(i32 %%extended%d)\n", reg_counter, (reg_counter - 1), reg_counter, reg_counter, reg_counter, reg_counter);
                reg_counter++;
                break;

        }
    }
    printf("ret i32 0\n}\n");

    return 0;
}
