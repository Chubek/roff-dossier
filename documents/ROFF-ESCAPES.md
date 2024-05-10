# Escape Sequences in ROFF (Mostly GROFF)

Escape sequences range from simple ones like `\c` to add a line break to `\fB\h'0.5i'\s24Important Heading\s0\fR`. So in a way, escape sequences are a method with wich ROFF, a complex typesetting engine, is turned into a simple markup language! But it's way more complex than that.

The most important escape sequence in ROFF is `\n[<id>]`, and its string counterpart `\*<id>`, read the page on [Registers](ROFF-REGISTERS.md).

### Passing Arguments to Escape Sequences

It is possible to pass arguments to escape sequences. Look the `\f` example above, or this:

```roff
Words\h'1i'apart. \v'.5i' Now lower.
```

So here, we pass `1i`, as in 1 inch (which the reader is most likely familiar with), to the `\h` escape sequence. We separate, and delmit these arguments with `'`.

### Aside: ASCII and Sentinels

These sequences were introduced to ROFF because the `.` notation was not well-suited for intra-text formatting. What I mean is, how often do you use `.` at beginning of a like? Ok, how often do you use `\` at middle of a text?

I think, without going as far as to delimit text, the way we to in PostScript --- which is an entirely different beast anyways --- we can only use the period and the solidus character, at least in English, in ASCII.


The same people who created ROFF are the same people who create Unicode (Thomposn and company) so I can understand how they screamed at their VT-100 terminals, wishing ASCII defined more sentinel-friendly characters!

But backwards solidus or `\` is, in fact, the *de-facto* historical sentinel. Backslash is not a typegraphical symbol. No language in the world uses it (at least not a language that is not a conlang created by some autismo who calls himself a fake name beginning with 'jan`!) and it was first introduced to ASCII as some sort of 'escape', in other words, a graphical sentinel. 

There's also a non-graphical sentinel in ASCII. Do you know why DEL, or ASCII 127, is a control character which is at the end of othe charset, unlike the other 32 which are at the beginning (0-31)? Reason is, you can 'punch out' with it, by setting all the bits to 1. Let me explain, on an ancient punchcard, you could set all the bits to 1 by punching out all of them, marking it as end of an stream, but also, something the human eye can scan. Also, you could use it to remove characters in case of errors.

LaTeX still deals with this issue, so every macro in ASCII begins with '\'. 

Funnily enough, on digial media, like a webpage, the 'sentinelality' of `\` has all but disappeared. 

You can view a dataset of all the ROFF escape sequences in `datasets/roff-escapes.csv`.
