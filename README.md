# Brainf**k Compiler

This is a compiler for the Brainf**k language. I'm making it to learn more about compilers by actually building one, even if its simple.

It emits LLVM IR to stdout, which can then be run with `lli` or compiled to machine code with `clang`.

Currently supported commands:
+
.
\-
<
\>
[
]

All brainf**k functionality is implemented!


## Optimizations
Implemented instruction bunching, so a string of +++++--- evaluates to just adding 2 to the current memory tape cell, instead of adding 1 five times and subtracting 1 thrice. 
