### ROFF: Not Just for Manpages!

In this repository, you'll find riches if you are a typesetting nerd, and a UNIX geek, like me.

The aim of this document is to help people understand ROFF, and its uses beyond that of manpages -- which is being slowly superceded by `mandoc(1)` anyways.

#### Your Guide to this Repository

1. First, in the 'documents' directory:

* [Short History of ROFF](documents/ROFF-HISTORY.md)
* [The Terse Syntax of ROFF](documents/ROFF-SYNTAX.md)
* [Macros in ROFF](documents/ROFF-MACROS.md)
* [Escape Sequences in ROFF](documents/ROFF-ESCAPES.md)
* [Registers in ROFF](documents/ROFF-REGISTERS.md)
* [ROFF and UNIX Manpages](documents/ROFF-MANPAGES.md)

2. And then, head to the 'datasets' directory to find CSV datasets of:

* [Reqeusts aka Commands](datasets/roff-requests.csv)
* [Escape Sequences](datasets/roff-escapes.csv)
* [Pre-defined Registers](datasets/roff-registers.csv)
* [Keywords (GROFF-only)](datasets/roff-filekw.csv)

(All these come with a short description, mind you -- The requests have their signature)

3. And finally, there are several examples in the `examples` directory. You can process them with GROFF. For example, to make PDF from them:

```
cat document.roff | groff -Tpdf
```

To just print them out to your terminal:

```
cat document.roff | groff -Tascii | less
```

The 'roff-utils' directory just contains a very WIP Scheme script. I will add stuff to it later. If you wish to stay alert about additions, changes, etc to this repository, start it perhaps?

I am working on an implementation of ROFF.

My email: `chubakbidpaa [at] riseup [dot] net`.

Take care.


