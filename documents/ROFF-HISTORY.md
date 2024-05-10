# The History of ROFF

On most Linux systems, you can view a history of ROFF using at `roff(7)`. This is just a short reprise.


### Runoff and Saltzer

In 1964, J. Saltzer distributed the 'Runoff' program for CTSS timesharing system. I could not locate any documents in the original Runoff syntax and I may as well never tried.

But in this [PDF file](https://web.mit.edu/Saltzer/www/publications/ctss/AH.9.01.pdf) which Saltzer himself scanned, we can see a description of Runoff. It did not look much different from ROFF. There were commands (which in ROFF were renamed to 'requests') at the beginning of each line, starting with dot. The reason for the letter being '.' has been stated before: It is highly unlikely that an English sentence would begin with a dot.

Saltzer's RUNOFF had commands (again, named to requests in ROFF) like '.literal' and '.center'. You can view all of them in the PDF file I linked.

Prior to RUNOFF, there was 'TYPESET'. The name RUNOFF is more creative. Now, this is just head-canon but there's an perfect tense, and an imperative tense to the verb 'run off' which both denote to printing:

* Statement: *The pages run off the printer*
* Imperative: *Run off to the printer and get me 10 copies of this literacy test, boy!*

Now I could be wrong, take this with a copious amount of salt.

### The Need for a Typesetting Engine

Runoff was adapted to other Time-sharing systems, but most of these systems were large mainframes. When UNIX began its development on the PDP-7, the authors had a hard time convincing their bosses at Bell Labs to buy them a PDP-8 or PDP-11 to continue their development.

I was born in 1993 and I am not the person whom you should rely on theories about early computing, but I attribute part of this hesitation on Bell Labs administrations' par to the anti-trust lawsuit which tore Bell telephones into some 60 regional companies --- part of this suit told Bell labs to just don't touch computers, but they did not specify: hardware, or software?

Truth is, unlike today, that software is its own industry, back then, it was closer to the FLOSS scene today, even looser, because software was not licensed. So Bell Labs did not see UNIX as a break-out Silicon Valley tech bro story, they saw it as their chief scientists wasting their time on a tiny computer!

But one reason they were permitted to do so, was promise of a typesetting system that girls over at the Patents Division could use. 


### Joe Ossanna, `troff` and `nroff`

Runoff was adapted to UNIX under 'Roff', and later renamed to 'nroff' for 'New Roff'.

'nroff' was created for typesetters, and its counterpart 'troff' was created for phototypesetters.

Phototypesetters were the transition between an all-digital and all-manual lithography. Instead of etching your type on stone, you etched it on photo cells. I think phototypesetters are still in use, but don't take my word on it.


### Lorinda Cherry, `eqn` and the Pipeline

One aspect of ROFF is the pipeline, `eqn`, `chem`, etc. One of the few [real] women who worked at Bell Labs, Lorinda Cherry, developed `eqn` to preprocess mathematical equation. Other utilities were developed by people like Ossanna himself, or Brian Kernighan. 

Cherry died just a few years ago. I think she might have died of COVID. Check out the internal UNIX documentary (the one where Kernighan bases, and pipeline-pills you), she's in there.

### UNIX Manpages

ROFF suddenly found a new use, and to this day, it's the only use it has: The manpages!

You can learn about this in the [Manpages](ROFF-MANPAGES.md) document of this dossier.


### GROFF, the Only Modern ROFF


In the late 1980s, GNU project released GROFF. To this day, it is the only way you can access a ROFF engine. You can try and build the one at Heirloom Toolchest, just dont.



