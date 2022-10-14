`typeIsLike` works as `typeIs`, except that it also dereferences pointers.

**Note:** None of these can test whether or not something implements a given
interface, since doing so would require compiling the interface in ahead of time.