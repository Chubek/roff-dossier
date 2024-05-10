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

We can arrive at more advanced examples of macro usage in ROFF:

```roff
.de CH  \" Chapter Heading
.sp 2   \" Add two spaces before the chapter heading
.ft R   \" Set font to Roman
.ps 24  \" Set point size to 24
.ce 100 \" Center the text
..
.de TX  \" Text body
.ft R   \" Set font to Roman
.ps 12  \" Set point size to 12
.sp 1   \" Add a space before the paragraph
.ti +1.5i \" Set temporary indent for the first line
..
.de EM  \" Emphasized Text
.ft I   \" Set font to Italic
.ps 12  \" Keep point size consistent with body text
.sp 1   \" Add a space before the emphasized text
..
.de P    \" Standard Paragraph
.sp 1    \" Add space before paragraph
.ti 0    \" Reset temporary indent if any
..
```

Which we can use this way:

```
.CH
The Adventures of Sherlock Holmes

.TX
Mr. Sherlock Holmes, who was usually very late in the mornings, save upon those not infrequent occasions when he stayed up all night, was seated at the breakfast table.

.P
I stood upon the hearth-rug and picked up the stick which our visitor had left behind him the night before.

.EM
"It was just such a stick as the old-fashioned family practitioner used to carry—dignified, solid, and reassuring."

.P
Holmes had looked at it with a curious smile.

```

You can define macros in one file, and include that file with `.so` or must use `m4(1)`.


### Standard Macro Packages

Historically, ROFF has been distributed alongside several macro packages. These are:

- The famed `man` package, for formatting manpages;
- The `ms` package, for formatting manuscripts;
- The `mm` package, for formatting memorandums;
- The `me` package, for formatting complex documents;
- The `mom` package, a modern set of macros for documents destined for LaTeX and PostScript.

GROFF also defines `www` package which is obviously for web pages, but seeing as how garbage `grohtml` is, let's say, there's no use for it?

I am actually interested to know where all these HTML manpages like `die.net` or Ubuntu's manpage repository come from. They are clealy not rendered with `grohtml` and it's just too risky to just translate `man` macros, because some fellow may just drop down to Assembly and use basic ROFF, as mentally-deficient people often do.

If anyone knows that, please do tell!

