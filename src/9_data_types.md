# Data Types

So far, we have only worked with single bytes (and I briefly mentioned *strings*). Realistically, not everything can be represented as a number between `0` and `255`.

In real-world programs, we use things called *data types* to specify how the data we are working with should be interacted with, and laid out in memory.

Here are the most common types, along with their mnemonics in both C and Rust (we will get to Rust in a bit). Other languages generally use some variation of the names below too.

| Type                         | C                | Rust   |
| ---------------------------- | ---------------- | ------ |
| Unsigned byte                | `unsigned char`  | `u8`   |
| Signed byte                  | `signed char`    | `i8`   |
| Unsigned short               | `unsigned short` | `u16`  |
| Signed short                 | `signed short`   | `i16`  |
| Unsigned integer             | `unsigned int`   | `u32`  |
| Signed integer               | `signed int`     | `i32`  |
| Unsigned long                | `unsigned long`  | `u64`  |
| Signed long                  | `signed long`    | `i64`  |
| 32-bit Floating-point number | `float`          | `f32`  |
| 64-bit Floating-point number | `double`         | `f64`  |
| A `true` or `false` value    | `bool`           | `bool` |

Another common data type exists, which is called a *string*. Strings are sequential lists of bytes that represent some text. In C, they are written as the `char*` type, in Rust they are written as the `&str` type.

As you may notice in the table above, almost all data types have a distinction between *signed* and *unsigned*. Signed values can be negative, and unsigned values cannot.