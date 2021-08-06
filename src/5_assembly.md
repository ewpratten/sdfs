# Assembly: Machine Code for Humans

As I mentioned about binary notation in [*Hexidecimal's Relation to Binary*](/3.1_hex_and_binary.html), the same applies to machine code. There is no way we are going to remember every byte and what it does (although reference books do exist on this, and Intel's is notoriously *huge*).

This is where we step in to the world of human-readable programming languages. At some point in the past, people decided that we needed a better way to program computers, and came up with a little thing called [*Assembly*](https://en.wikipedia.org/wiki/X86_assembly_language). Assembly code is still almost exactly the same as machine code, except it uses human-friendly [*mnemonics*](https://en.wikipedia.org/wiki/Mnemonic) instead of the machine-oriented *opcodes* we saw before.

These mnemonics would give out *SHORT Jump* instruction (`0xEB`) a nicer name: `jmp`.

We also gain the ability to *label* things, so instead of remembering which of those extra bytes jumps where, we let the computer figure that out for us.

Our program from the previous section, rewritten in Intel Assembly now looks like this:

```asm
loop:
    jmp main
main:
    jmp loop
```

`loop` and `main` are labels, and the `jmp` instructions should be pretty self-explanatory at this point.