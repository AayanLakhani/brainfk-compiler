#include <stdio.h>

char get_opposite(char command) {
    switch (command) {
        case '+': return '-';
        case '-': return '+';
        case '>': return '<';
        case '<': return '>';
        default: return '\0';
    }
}

int instruction_finder(char command) {
  int count = 1;
  int new_command = getchar();
  char opp = get_opposite(command);
  while (new_command != '\0') {
    if(new_command == command){
        count++;
    }
    else if (new_command == opp){
        count--;
    }
    else {
        break;
    }
    new_command = getchar();
  }
  FILE *input = stdin;
  ungetc(new_command, input);
  return count;
}

int main(int argc, char **argv) {
  char command;
  int reg_counter = 1;
  int loop_counter = 0;
  int loop_stack[1000];
  int stack_idx = 0;
  int closing_loop;
  int command_count;

  printf("declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, "
         "i1 immarg)\ndeclare i32 @putchar(i32)\ndeclare i32 "
         "@getchar()\n\ndefine i32 @main() {\n%%arr = alloca [30000 x "
         "i8]\ncall void @llvm.memset.p0.i64(ptr %%arr, i8 0, i64 30000, i1 "
         "false)\n%%idx = alloca i32\nstore i32 0, i32* %%idx\n");
  while ((command = getchar()) != EOF) {
    switch (command) {
    case '+':
      command_count = instruction_finder('+');
      printf("%%%d = load i32, i32* %%idx\n%%arrayidx%d = getelementptr "
             "inbounds [30000 x i8], [30000 x i8]* %%arr, i32 0, i32 %%%d\n",
             reg_counter, reg_counter, reg_counter);
      reg_counter++;
      printf("%%%d = load i8, i8* %%arrayidx%d\n", reg_counter,
             (reg_counter - 1));
      reg_counter++;
      printf("%%%d = add i8 %%%d, %d\nstore i8 %%%d, i8* %%arrayidx%d\n",
             reg_counter, (reg_counter - 1), command_count, reg_counter,
             (reg_counter - 2));
      reg_counter++;
      break;

    case '-':
      command_count = instruction_finder('-');
      printf("%%%d = load i32, i32* %%idx\n%%arrayidx%d = getelementptr "
             "inbounds [30000 x i8], [30000 x i8]* %%arr, i32 0, i32 %%%d\n",
             reg_counter, reg_counter, reg_counter);
      reg_counter++;
      printf("%%%d = load i8, i8* %%arrayidx%d\n", reg_counter,
             (reg_counter - 1));
      reg_counter++;
      printf("%%%d = sub i8 %%%d, %d\nstore i8 %%%d, i8* %%arrayidx%d\n",
             reg_counter, (reg_counter - 1), command_count, reg_counter,
             (reg_counter - 2));
      reg_counter++;
      break;

    case '>':
      command_count = instruction_finder('>');
      printf("%%%d = load i32, i32* %%idx\n", reg_counter);
      reg_counter++;
      printf("%%%d = add i32 %%%d, %d\n", reg_counter, (reg_counter - 1),
             command_count);
      printf("store i32 %%%d, i32* %%idx\n", reg_counter);
      reg_counter++;
      break;
    case '<':
      command_count = instruction_finder('<');
      printf("%%%d = load i32, i32* %%idx\n", reg_counter);
      reg_counter++;
      printf("%%%d = sub i32 %%%d, %d\n", reg_counter, (reg_counter - 1),
             command_count);
      printf("store i32 %%%d, i32* %%idx\n", reg_counter);
      reg_counter++;
      break;

    case '.':
      printf("%%%d = load i32, i32* %%idx\n%%arrayidx%d = getelementptr "
             "inbounds [30000 x i8], [30000 x i8]* %%arr, i32 0, i32 %%%d\n",
             reg_counter, reg_counter, reg_counter);
      reg_counter++;
      printf("%%%d = load i8, i8* %%arrayidx%d\n%%extended%d = zext i8 %%%d to "
             "i32\n%%result%d = call i32 @putchar(i32 %%extended%d)\n",
             reg_counter, (reg_counter - 1), reg_counter, reg_counter,
             reg_counter, reg_counter);
      reg_counter++;
      break;

    case ',':
      printf("%%%d = call i32 @getchar()\n", reg_counter);
      reg_counter++;
      printf("%%%d = load i32, i32* %%idx\n%%arrayidx%d = getelementptr "
             "inbounds [30000 x i8], [30000 x i8]* %%arr, i32 0, i32 %%%d\n",
             reg_counter, reg_counter, reg_counter);
      reg_counter++;
      printf("%%%d = trunc i32 %%%d to i8\n", reg_counter, (reg_counter - 2));
      printf("store i8 %%%d, i8* %%arrayidx%d\n", reg_counter,
             (reg_counter - 1));
      reg_counter++;
      break;

    case '[':
      printf("%%%d = load i32, i32* %%idx\n%%arrayidx%d = getelementptr "
             "inbounds [30000 x i8], [30000 x i8]* %%arr, i32 0, i32 %%%d\n",
             reg_counter, reg_counter, reg_counter);
      reg_counter++;
      printf("%%%d = load i8, i8* %%arrayidx%d\n", reg_counter,
             (reg_counter - 1));
      reg_counter++;
      printf("%%%d = icmp ne i8 %%%d, 0\n", reg_counter, (reg_counter - 1));
      printf("br i1 %%%d, label %%loop%d, label %%loop%d.end\n", reg_counter,
             loop_counter, loop_counter);
      printf("loop%d:\n", loop_counter);
      reg_counter++;
      loop_counter++;
      loop_stack[stack_idx] = loop_counter;
      stack_idx++;
      break;

    case ']':
      closing_loop = loop_stack[stack_idx];
      stack_idx--;
      printf("%%%d = load i32, i32* %%idx\n%%arrayidx%d = getelementptr "
             "inbounds [30000 x i8], [30000 x i8]* %%arr, i32 0, i32 %%%d\n",
             reg_counter, reg_counter, reg_counter);
      reg_counter++;
      printf("%%%d = load i8, i8* %%arrayidx%d\n", reg_counter,
             (reg_counter - 1));
      reg_counter++;
      printf("%%%d = icmp ne i8 %%%d, 0\n", reg_counter, (reg_counter - 1));
      printf("br i1 %%%d, label %%loop%d, label %%loop%d.end\n", reg_counter,
             closing_loop, closing_loop);
      reg_counter++;
      printf("loop%d.end:\n", closing_loop);
      break;
    }
  }
  printf("ret i32 0\n}\n");

  return 0;
}
