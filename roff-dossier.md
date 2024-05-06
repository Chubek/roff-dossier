# A Dossier on ROFF

### A: The only use for ROFF in [current year]

I think most users of a POSIX-compliant UNIX OS, chiefly Linux these days, are familiar with the manpages. Basically, manpages are documents written in ROFF's 'man' macro package, they are usually stored in `/usr/share/man/man[1-8]`, or `/usr/local/share/man/man[1-8]/` (`[1-8]` here meaning 8 directories named `man1` to `man8`). This depends on whether the package manpage relegates to was installed via a package manager like `apt` or built from source. Standard stuff!

The way manpages, on Linux at least, work is, the GNU implementation of ROFF, GROFF (`groff(1)`), translates this manpage using, as I mentioned, the `man` macro package, into ASCII text, and the `man(1)` utility will page it using a pager like `more(1)` or `less(1)`. I personally use the `most(1)` pager to view my manpages. `most(1)` is a very nice pager with syntax highlighting. There are also `x(7)` pagers. 

I think whether you know what these suffixes like 1 in `most(1)` or 7 `x(7)` mean, you are annoyed by my usage of them --- but let me explain: This is the best way to denote what you are talking about! So what are these number? So remember those directories `man1` through `man8`? Those are manpages sections. It is kinda like 'set in stone' that there are 8 manpage sections kinda! But you can define a sub-space for these categories. For example, when my [postscript-manpages](https://github.com/Chubek/postscript-manpages) Perl script generates `3ps`. These section numbers are kinda loose outside 1, 2, and 3. 1 is utilities, so when I say `man(1)` I mean the man utility, not the `man` macro page for example. 2 is syscalls, for example, `read(3)`. And 3 is library, for example, `fopen(3)`. Sometimes, a system calls has both 2 and 3 sections! Or more annoying, 1 and 2 sections. For the life of me, `open(1)` is not something I need a 'manual` on! I aways want `open(2)`!

### B: ROFF is Much More!

Ok this is getting rambly. Point is, the only 'mainstream' use for ROFF is manpages. In fact, the history of ROFF can be viewed in `roff(7)` (basically type in `man 7 roff). 

But ROFF is MUCH MORE than manpages! It's a completely capable page description, typesetting, and page formatting language. It's just as capable as LaTeX, PostScript, Asymptote, and it much more complex and convoluted than simple markup language like HTML or Markdown or RST! Some people think ROFF is a Markup language, which IT AIN'T. ROFF is a Turing-complete language. It is a language with control structures, numeric expressions, and IO. That's what a Turing machine is! Unlike HTML which is a simple Markup language, ROFFis basically a very terse Turing-complete macro preprocessor with typesetting and page formatting capabilities.

### C: ROFF Syntax

The syntax of ROFF is super terse. And it could be argued that ROFF, as a meta-programming language, is more-or-less orthogonal. 

#### Lexical Grammar === Syntactic Grammar

I did say ROFF is not a 'markup' language, but it DOES have charactristis of one. Remember, ROFF was originally born in the early 1970s. Way, way before the 'markup language craze' of the 90s.

Basically, in the 90s, you had the Flaming Hot Cheeots, and markup languages! In that era, people just shat out markup languages. The stupidest one I've seen is [VRML](https://en.wikipedia.org/wiki/VRML) which is the 'Virtual Reality Markup Language'... Huh? At least we got Markdown out of this craze! RIP in piece Aaron. (I know Aaron Swartz did not 'technically' made MD, but see, he made a language very similar to it, that used the 'natural markup' people used in email, usenet, etc as an actual markup, plus, he's the martyr of the old web, and the old internet in general).

So to explain what I mean by saying 'ROFF has charactristics of a markup language', here it is:

> ROFF is a language with which you can define your own markup!

Yeah, I said it.

So, a 'plain text', as in, the text I am writing now, is a token in ROFF. Its lexical grammar is its syntactic grammar. It's entirely a Type 3 language (regular). You can parse it just with Regex! In fact, we will be writing a ROFF parser in AWK shortly.

And then come the requests, and escape sequences.

#### Reqeusts and Escape Sequences === Intrinsics of ROFF

'Requests' and 'Escape Sequences' in ROFF would be called 'built-in commands' or 'intrinsics' in a more evolved language.

A 'Reqeust' can only appear at the start anchor. It starts with a period '.'. GROFF manual says period was chosen because in natural language, a period never occurs at the beginning of a line.  And they are right on the money. Most markup languages use this tactic. Like have you ever seen a markup languag that does not have a sigil for tags like 'h1' or 'blockquote'? So in Perl's POD we have '=' as this sigil and in Markdown we have '#'. It is guaruanteed that in a normal human-readable text, such constructs never happen UNLESS you are referring to the language construct itself, in which case, you can escape with a backwards solidus '\' in case of Markdown, or use lexemes like '&gt' in HTML.

That brings us to escape sequences. They are tokens prefixed by backwards solidus '\'. But don't think, like in Markdown, it's used for literation. It's more of a sigil than a escape!

There are other tokens in ROFF. One is number. Numbers are often suffixed with thir measurement unit, e.g. 'i' for 'inch'. The other is identifiers.

Identifiers are used in macro, register and string names (read about the semantis to learn about them). An identifier does not have a sigil when you define it. But it has several use cases. One is as macro name, which you use just like reqeusts. Another is as register or string names, which you use with escape sequences.

Which means, yes, **YOU CAN PUN IDENTIFIERS IN ROFF!** That is because, there's a shared symbol table for everything. Unless you spin off a new env with '.ev' requests.

#### An Example of a ROFF Code

Although there are plenty of examples in the 'example
