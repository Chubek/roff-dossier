# Macros and Macro Packages in ROFF

As we said in the [Syntax](ROFF-SYNTAX.md) document, ROFF has a very terse syntax. That does not mean ROFF is not orthogonal! You may not be able to extend the syntax, but you can do some metaprogramming. In fact, ROFF is ALL about metaprogramming. You can define macros in ROFF, and that's what separating it from ealier typesetting languages like Runoff. There were probably millions of typesetting languages in the early 70s and ROFF was only set apart by its macros (said me, born 1993, take with a giant pillar of salt).

There's a few requests responsible for defining, and appending macros. There are `.de` and `.da`. Let's explore `.de`:

```roff
.de B
.ft B
\\$1
..
```

So you see `..`, that is usually the macro terminator. In a syntax resembling that of here-docs, you can do:

```roff
.de B EB
.ft B
\\$1
EB
```

Here `\\$1` is the argument number, similar to Shell, ROFF is 'tacit'. Many older languages are tacit. Most scripting languages related to UNIX are tacit, e.g. Perl. You do not, however, always need to pass an argument to a macro. A macro's effect is set until the next linebreak. You can see it in the `examples` directory.

```
.M1
Line of text

\" Effect of M1 done

.M2
Line of text 2

\" Effect of M2 done

```

If we mix 
