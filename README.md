Debunking the age-old myth about ++i and i++
==========

Every programmer has this argument at least a few times in their career. Which is faster, `i++` or `++i`?
This git repo exists so next time there is someone who bugs you about it on a code review, you can point them
here and analyze the differences.

The answer can vary depending on how they are used.
Here, we focus on using them in a `for` loop, like so:

```
for (something i = 0; i < max; i++)
```

versus

```
for (something i = 0; i	< max; ++i)
```

This repo contains a couple of really simple C++ files. The `ipp` and `ppi` cases use a simple integer,
while `ipp2` and `ppi2` use an iterator. The idea is to compile all of them into assembly, and see the
difference between the generated assembly code. If there is no difference, that means your compiler is
smart enough to know that they are in this case semantically completely equivalent.

How to see the difference for yourself
----------

For your performance analysis convenience,
there is a makefile which compiles all files into assembly on the `-O1` optimization level:

```
make
```

You can then see the differnece between the integer versions:

```
diff ipp.s ppi.s
```

And the iterator versions too:

```
diff ipp2.s ppi2.s
```

Contributions
----------

If you want to analyze the difference between `i++` and `++i` in other circumstances using the same approach,
feel free to drop me a pull request with your proposal.

Happy coding!
