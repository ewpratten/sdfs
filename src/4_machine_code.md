# Machine Code

When a computer is powered on, it loads some information into memory, then passes the first byte from memory into the CPU. Each of these bytes has a special meaning to the CPU, telling it what to do next. We call these *Instructions*, because they instruct the CPU what to do.

*Quick sidenote: The CPU doesn't actually read the **first** byte. The byte number depends on the specific CPU, but that doesn't matter for this section.*

While I am about to introduce you to programming your computer by writing the bytes to memory manually, you will never do or see this again.

## Your First Program: Jump Loop

One of the simplest programs I can think of is one that never ends. We will:

1. Have the CPU read the first byte in memory
    - This byte contains an instruction telling the CPU to read the third byte in memory
2. At the third byte, we will put an instruction telling the CPU to go back to the first byte

This will cause an infinite loop of *jumping* back anf fourth between the first and third bytes.

Since we are working with the `x86_64` architecture, we will use what is called *X86 Machine Code* to write this program. Each architecture has a different mapping between which bytes do what when passed to the CPU.

The following instruction is all we need for this program

| Instruction | Description |
| ----------- | ----------- |
| `0xEB`      | SHORT Jump  |

A *SHORT Jump* is what we call it when the CPU needs to move to another instruction that is nearby in memory (within a couple hundred locations, not thousands).

Using just this instruction, we can write out first program right now (although actually running it is impractical, so we won't do that). The bytes in memory, in order are:

```
0xEB
0x00
0xEB
0xFC
```

As you can see, even though we are only doing two instructions, there are four bytes. This is because the extra bytes (`0x00` and `0xFC`) are used to tell the CPU *where* to jump to. A much more in-depth explication on what those bytes are doing can be found [here](https://thestarman.pcministry.com/asm/2bytejumps.htm).