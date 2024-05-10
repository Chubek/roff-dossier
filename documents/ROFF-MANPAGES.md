# ROFF and UNIX Manpages

Perhaps, in [insert current year] the only use for ROFF (basically GROFF) is manpages. 

UNIX Manpages have always been in ROFF. The macro package 'man' is designed to make it easier for man writers to author them.

But, speaking as someone who tried to learn writing proper manpages before his interest in ROFF, I have to say: 'man' package sucks!

That is why there are several ways to translate from other markup languages down to 'man' macros, and have the 'mandb' utility take it from there.

There several translators, syntax-directed or tree-directed that do this:

- mandoc -> The main BSD utility that replaces ROFF;
- pandoc -> The pansexual document translator, supports 'mom' and 'man';
- txt2man -> Convert structured text to manpages;
- pod2man -> Convert Perl's POD to manpages, this one is really useful because you can basically embed manpages in Perl scripts;
- Ronn -> Convert Markdown to manpages;

All these 'document languages', e.g. reStructuredText, AsciiDoctor, DocBook, Yodl, etc, they also can make either 'man' macro, or plain ROFF.

### Sections of Manpages

On most UNIX systems like Linux or BSD, Manpages are divided into 8 sections, on Linux, they are:

1. User Commands, e.g. `ls(1)`, `grep(1)`, `awk(1)`;
2. System calls, .e.g. `read(2)`, `fork(2)`;
3. Library routines, e.g. `fopen(3)`, `malloc(3)`;
4. Special files, e.g. `null(4)`, `cpuid(4)`;
5. Conventions and Formats, e.g. `systemd.preset(5)`, `tty(5)`;
6. Games, at least I think so? --- Whatever;
7. Misc, e.g. `roff(7)`;
8. Sysadmin commands, e.g. `init(8)`, `sysctl(8)`;

On Linux there is also a section 9, for kernel routines.

You can define a 'namespace' for these sections. For example, all the Perl commands are under `3pl` and all the OCaml modules are in `3o`.

*Protip*: You can view all the pages under a section with `man -s <section> -k .`, you can replace `man` with `apropos` and it does the same.

### Standard Structure of a Manpage

A manpage usually contains the following sections:

1. **NAME**
   - The name of the command, function, or file, followed by a brief one-line description of its purpose.

2. **SYNOPSIS**
   - A formal description of the command's interface, including its name, any options it accepts, and its arguments. For library functions, this section lists the function signature, showing how it should be called from a program.

3. **DESCRIPTION**
   - A detailed explanation of the command or function. This section may include what the command or function does, options, behavior, and its effects.

4. **OPTIONS**
   - A detailed list of options and flags that the command accepts. Each option is usually listed along with a brief explanation of what it does. This section is sometimes integrated into the DESCRIPTION.

5. **ARGUMENTS**
   - Explanation of the arguments that the command takes. This section provides details about the purpose and expected data for each argument.

6. **EXIT STATUS**
   - Describes the typical exit values the command returns and what they signify. This is more common in commands than in library functions.

7. **RETURN VALUE**
   - For library functions, this section details the values returned by the function, particularly what each value signifies.

8. **ERRORS**
   - For library functions, a description of the error conditions that the function may report, and how errors are reported (e.g., through the return value or `errno`).

9. **ENVIRONMENT**
   - Describes environment variables that affect the function or command's behavior.

10. **FILES**
    - Lists and describes files that are relevant to the command or function, including configuration files, or files that are read or modified.

11. **SEE ALSO**
    - References to related man pages, providing a way to explore related commands, functions, or files. Links are usually provided as man page references.

12. **DIAGNOSTICS**
    - Information about diagnostic messages that the command might produce, explaining what certain output or error messages mean.

13. **BUGS**
    - Known bugs and issues with the command or function, and possibly ways to avoid or handle them.

14. **EXAMPLES**
    - Practical examples showing how to use the command or function. This is especially helpful for understanding how to combine different options and arguments.

15. **AUTHORS**
    - Information about the authors or maintainers of the command or function.

16. **COPYRIGHT**
    - Copyright notice for the command or function, often including licensing information.

17. **HISTORY**
    - A brief history of the command or function, possibly including its origin and any major changes it has undergone.

### Constructing Manpages (`mandb(1)`, `lexgrog(1)`)

To construct a manpage out of a ROFF document, we use `mandb(1)`. On Linux, with GROFF, we can use `lexgrog(1)`.

* `lexgrog(1)` -> A utility that matches the header info of a ROFF manpage, for headers line 'NAME', to insert into `apropos(1)` and `whatis(1)` database;
* `mandb(1)` -> A utility that updates the manpages database;

### Viewing/Browsing Manpages (`man(1)`, `whatis(1)`, `apropos(1)`)


The view and browse manpages, we have:

* `man(1)` -> The official pager for manpages, although on systems like Linux it leeches off another pager like `less(1)`. I personally use `most(1)` to page;
* `apropos(1)` -> Search a regex/glob pattern, in manpages;
* `whatis(1)` -> Look up exact match or regex/glob pattern in manpages;


### Example of a Simple Manpage

Here's a simple manpage to munch on:

```roff
.TH EXAMPLECMD 1 "2024-05-10" "version 1.0" "User Commands"
.SH NAME
examplecmd \- demonstrate basic man page structure
.SH SYNOPSIS
.B examplecmd
.RI [ options ] files...
.SH DESCRIPTION
.B examplecmd
is a hypothetical command used to demonstrate the structure and formatting of a Unix man page. It does not perform any actual operations on files but can be used to show how command-line options and arguments are supposed to be documented.
.SH OPTIONS
.TP
.B \-h, \-\-help
Display a help message and exit.
.TP
.B \-v, \-\-version
Output version information and exit.
.TP
.B \-o, \-\-output
Specify an output file. The command will simulate writing output to this file.
.SH EXAMPLES
.TP
.B examplecmd \-o output.txt file1 file2
Pretends to process "file1" and "file2" and writes the output to "output.txt".
.SH AUTHOR
Written by John Doe.
.SH "SEE ALSO"
.BR ls(1),
.BR cat(1)
```

The best way to view this on Linux is:

```
# Paste into examplecmd.1
# Extensions for manpages are based on their section and namespace
cat examplecmd.1 | groff -man -Tascii | less
# Can use 'most' instead of 'less'
```



