# The Stack and Heap

You may have noticed that things like memory locations, and which registers are used feel rather arbitrary. That's because, up until this point, they have been whatever I feel like using.

In the real world, well-designed conventions exist to ensure everyone's code follows the same set of rules, and uses memory in the same way. This is what lets different pieces of code from different people work together.

The first important piece in the way we manage memory is knowledge of the stack and heap.

Both the stack and heap are separate segments of the same memory in your computer. They start at opposite ends of memory, and grow towards the center. For example, if you had 256 bytes of RAM total, you might find that bytes 0-128 are allocated for the stack, and bytes 128-256 are the heap. It is very possible for these to overlap with eachother, and that is a big problem.

## The Stack

The stack is a First-In-First-Out (FIFO) data structure. Its starting location in memory is constant, and in assembly, the start address can be found in the `RBP` register.

The stack is modified via `push` and `pop` instructions, where `push` will increase the size of the stack by one byte, then put the specified value in that new spot. `pop` will give you the top value from the stack, then shrink the stack by one byte.

To see where the "top" of the stack currently sits in memory, you can access the `RSP` register.

## The Heap

The heap can be thought of as "some memory that exists for when you need it". How it is managed is different for every programming language and OS. Generally, you as a programmer ask the Operating System to give you some part of the heap to use, then you return it when you are done with it.

*What* you use your portion of heap for is completely up to you, and it can be any size.