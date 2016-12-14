# Pure assembly, library-free Linux threading demo

A demonstration of library-free, Pthreads-free threading in Linux with pure
x86_64 assembly. Thread stacks are allocated with the `SYS_mmap` syscall and
new threads are spawned with the `SYS_clone` syscall. Synchronization is
achieved with the x86 `lock` instruction prefix.

* [Raw Linux Threads via System Calls](http://nullprogram.com/blog/2015/05/15/)

## Fun TODOs

- Implement `thread_join`, `thread_self`, etc.
- Add more library functions besides `puts` and `exit`
