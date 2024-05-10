# The ROFF Syntax

## Requests and Escape Sequences

ROFF, being an ancient language, designed for efficiency, has a very 'terse' syntax. A 'terse' syntax, however, is not 'exactly' what ROFF has. We could say LLVM has a 'terse' syntax, ROFF is beyond 'terse': It's 'oblique'!

Just like its ancestor, Runoff (which we learned about on [History](ROFF-HISTORY.md)), it is comprised of 'requests', which are basically commands prefixed with '.' at the start of line, and most of them are no more than 2 characters:

``roff
.de
.ll 12i
``

Requests 'MAY' accept one or two parameters. You can see the signature for reqeusts in `datasets/roff-reqeusts.csv`.

Although GROFF allows for any number of characters, the original ROFF only allows for 2. Which is ridiculous, because Runoff allows for more! However, Runoff does not have macros.

Besides the requests, we have 'escape sequences'. These are sequences of text beginning with a backwards solidus (`\`). In fact, it's been said that C's escape sequences have thir birthplace here (said by me, just now). Take it with a mountain of salt, but it's not a long way from ROFF escape sequences, to C's escape sequences right?

```
\%
\&
```

You can view the list of escape sequences in `datasets/roff-escapes.csv`.

You may notice that, the typesetting system that people use today, LaTeX, is not much different syntax-wise.


**Anything else is text;**
**and Everything else is text!**

Basically, anything that is not a request, or an escape sequence, it considered plain text. There are some 130-odd built-in requests which are expainded by macros (read about them in [Macros](ROFF-MACROS.md)].

GROFF, being the only working ROFF engine today, has a complex hyphenation algorithm. But that's that, hyphenation is the only modification ROFF engine does to your text. 
