# The new program header we need
.global _start
.text

    # Where the program starts
    _start:
        mov $1, %rax       # Specify we want system call 1 (the write call)
        mov $1, %rdi       # Specify we want to write to the terminal
        mov $message, %rsi # Tell the system call where our string is in memory
        mov $14, %rdx      # Tell the system call how big the string is
        syscall            # Call the system call

        # Our exit code
        mov $60, %rax      # Specify we want system call 60 (the exit call)
        xor %rdi, %rdi     # Set rdi to 0 (this means the program was successful)
        syscall            # Call the system call

    # The string containing our message
    message:
        .ascii "Hello, World!\n" # The \n at the end of this makes it print on its own line
