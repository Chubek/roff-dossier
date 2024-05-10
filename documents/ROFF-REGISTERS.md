# ROFF Registers (Numeric, Textual)

Officially, ROFF only has one type of 'registers' and those are numeric registers. But since 'strings' and 'string registers' could be thought of as synonymous, I call them 'numeric registers' and 'textual registers'.


### Numeric Registers

These are defined with the '.nr' requests, they can be accessed with the `\n[<id>]` escape sequence.

```roff
.nr ten 10
The number is \n[ten]? If so, that's a decimal base.
```

One could use numeric registers in tandem with macros and control structures (see [CONTROL](ROFF-CONTROL.md)) to have state machine:

You can also use measurements with `.nr`:

```roff
.nr PageLength 3.5i
```


```roff
.nr Counter 0  \" Initialize a counter
.ds Footer "Page \n[%] of \n[LastPage]"  \" Define a string for the footer

.de incrementCounter  \" Define a macro to increment the counter
  .nr Counter +1
  .if \n[Counter] > 10 .nr Counter 0
..
```

You could reassign to these registers:

```roff
.nr MyCount 10   \" Initially sets MyCount to 10
.nr MyCount 20   \" Changes MyCount to 20
.nr MyCount +5   \" Increments MyCount by 5
.nr MyCount -3   \" Decrements MyCount by 3
.nr MyCount *2   \" Doubles the value of MyCount
.nr MyCount /2   \" Halves the value of MyCount
```


### Textual (String) Registers

These are defined by `.ds`, and accessed by `\*<id>` escape sequence.


```roff
.ds ten_s "ten"
Was it \*ten_s\&? If so, please hurry!
```

(Notice the use of `\&` here!)

You can use these requests to append to string register:

```
.as ten_s "Appendage"
.as1 ten_s "Appendage"
```

`.as1` is slightly differnet from `.as`, refer to `datasets/roff-requests.csv`.


### Built-in Registers

There are several buit-in registers in ROFF, especially GROFF. You can see them in `datasets/roff-registers.csv`.

