# Computer Memory

Arguable the most important concept when writing any computer program is *memory*. At this point in the book, I'll leave memory as more of an abstract *thing* than explaining how its physically working, and how it is broken up.

Your computer can remember things, but there is also a general tradeoff between how quickly  it can pull up such data, and how long the data can exist. This is why you have seperate RAM and Hard Drive in your computer, since the RAM is fast but loses information when powered down, but the Hard Drive is the opposite.

The easiest way to think of your computer's memory is as one *really long* list of small things. Each "small thing" being a [Byte](https://en.wikipedia.org/wiki/Byte).

## Addressing Memory

Since computers have so much memory, it is very important to have a way to specifiy which location (or "slot", or "item in the list") you want to access. Luckily, we can just do this by specifying which *element* we want. Every memory location is numbered, the first being at position `0`.

Since computers have *so much* memory, these numbers get big *fast*. The solution in the computing world is to use a different numbering system, called *base-16* or [*hexadecimal*](https://en.wikipedia.org/wiki/Hexadecimal). The first memory location is still `0x00` (notice, its written a little differently), but what would have been location `10` is now written as `0x0A`.
