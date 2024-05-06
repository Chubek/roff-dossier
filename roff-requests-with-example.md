1. **.ab** - Abort with a message.
   - **Signature**: `.ab <message: string>`
   - **Example**:
     ```groff
     .ab "Error: Unexpected end of file."
     ```

2. **.ad** - Adjust line alignments.
   - **Signature**: `.ad <mode: l | r | c | b | n>`
   - **Example**:
     ```groff
     .ad b
     ```

3. **.af** - Assign a format to a number register.
   - **Signature**: `.af <register: string>, <format: string>`
   - **Example**:
     ```groff
     .nr count 10
     .af count I
     ```

4. **.aln** - Alias a new name to an existing register.
   - **Signature**: `.aln <new_name: string>, <old_name: string>`
   - **Example**:
     ```groff
     .nr a 10
     .aln b a
     ```

5. **.als** - Alias a new name to an existing macro or string.
   - **Signature**: `.als <new_name: string>, <old_name: string>`
   - **Example**:
     ```groff
     .ds oldStr "Hello, World!"
     .als newStr oldStr
     ```

6. **.am** - Append content to an existing macro.
   - **Signature**: `.am <macro_name: string>`
   - **Example**:
     ```groff
     .de myMacro
     Original content.
     ..
     .am myMacro
     Appended content.
     ..
     ```

7. **.am1** - Append content to an existing macro, including a newline at the end.
   - **Signature**: `.am1 <macro_name: string>`
   - **Example**:
     ```groff
     .de myMacro
     Original content.
     ..
     .am1 myMacro
     Appended content with newline.
     ..
     ```

8. **.ami** - Append content to an existing macro with an indent.
   - **Signature**: `.ami <macro_name: string>`
   - **Example**:
     ```groff
     .de myMacro
     Original content.
     ..
     .ami myMacro
     .in 2
     Indented appended content.
     .in 0
     ..
     ```

9. **.ami1** - Append content to an existing macro with an indent, including a newline at the end.
   - **Signature**: `.ami1 <macro_name: string>`
   - **Example**:
     ```groff
     .de myMacro
     Original content.
     ..
     .ami1 myMacro
     .in 2
     Indented appended content with newline.
     .in 0
     ..
     ```

10. **.as** - Append text to a string register.
   - **Signature**: `.as <register: string>, <text: string>`
   - **Example**:
     ```groff
     .ds myString "Initial"
     .as myString " Appended"
     ```

11. **.as1** - Append text to a string register, adding a newline at the end.
   - **Signature**: `.as1 <register: string>, <text: string>`
   - **Example**:
     ```groff
     .ds myString "Initial"
     .as1 myString " Appended with newline\n"
     ```

12. **.asciify** - Convert a string to ASCII.
   - **Signature**: `.asciify <text: string>`
   - **Example**:
     ```groff
     .asciify "Café"  \" Outputs 'Cafe'
     ```

13. **.backtrace** - Print a stack trace of macros and diversions.
   - **Signature**: `.backtrace`
   - **Example**:
     ```groff
     .backtrace  \" Useful for debugging complex macro calls
     ```

14. **.bd** - Embolden a font by overstriking.
   - **Signature**: `.bd <font: string>, <space: number>`
   - **Example**:
     ```groff
     .bd R 2  \" Emboldens the Roman font with 2 units of overstriking
     ```

15. **.blm** - Set the macro to invoke at the bottom of the page.
   - **Signature**: `.blm <macro: string>`
   - **Example**:
     ```groff
     .de Footer
     .ce 0
     Page footer content.
     ..
     .blm Footer
     ```

16. **.box** - Draw a box.
   - **Signature**: `.box <height: number>, <width: number>`
   - **Example**:
     ```groff
     .box 5 10  \" Draws a box 5 units high and 10 units wide
     ```

17. **.bp** - Begin a new page.
   - **Signature**: `.bp <page: number?>`
   - **Example**:
     ```groff
     .bp  \" Start a new page immediately
     ```

18. **.br** - Insert a line break.
   - **Signature**: `.br`
   - **Example**:
     ```groff
     This line is broken.
     .br
     New line starts here.
     ```

19. **.break** - Synonym for `.br`.
   - **Signature**: `.break`
   - **Example**:
     ```groff
     This line is also broken.
     .break
     Another new line starts here.
     ```

20. **.brp** - Break and output a page.
   - **Signature**: `.brp`
   - **Example**:
     ```groff
     Some content here.
     .brp  \" Forces a page break and outputs the current page
     ```

21. **.c2** - Change the nobreak control character.
   - **Signature**: `.c2 <character: char>`
   - **Example**:
     ```groff
     .c2 &  \" Changes the nobreak control character to '&'
     ```

22. **.cc** - Change the control character.
   - **Signature**: `.cc <character: char>`
   - **Example**:
     ```groff
     .cc @  \" Sets '@' as the new control character
     ```

23. **.ce** - Center text for a given number of lines.
   - **Signature**: `.ce <lines: number?>`
   - **Example**:
     ```groff
     .ce 3
     Centered line 1
     Centered line 2
     Centered line 3
     ```

24. **.cf** - Copy a file to the output.
   - **Signature**: `.cf <filename: string>`
   - **Example**:
     ```groff
     .cf /path/to/file.txt  \" Copies the contents of file.txt to the output
     ```

25. **.cflags** - Set character flags.
   - **Signature**: `.cflags <flag: number>`
   - **Example**:
     ```groff
     .cflags 1  \" Set character flag to 1 (depends on system interpretation)
     ```

26. **.ch** - Schedule a macro for execution at a specified position.
   - **Signature**: `.ch <macro: string>, <position: number>`
   - **Example**:
     ```groff
     .de Trigger
     Triggered content here.
     ..
     .ch Trigger 10  \" Executes 'Trigger' at 10 units from top of page
     ```

27. **.char** - Define a new character.
   - **Signature

**: `.char <name: string>, <description: string>`
   - **Example**:
     ```groff
     .char myChar \(*A  \" Defines 'myChar' as the special character sequence '*A'
     ```

28. **.chop** - Chop characters from a string register.
   - **Signature**: `.chop <register: string>, <length: number>`
   - **Example**:
     ```groff
     .ds myString "Hello, World!"
     .chop myString 6  \" Retains 'Hello,' from 'Hello, World!'
     ```

29. **.class** - Define a character class.
   - **Signature**: `.class <class: number>, <members: string>`
   - **Example**:
     ```groff
     .class 1 "AEIOU"  \" Defines class 1 containing vowels
     ```

30. **.close** - Close a previously opened file.
   - **Signature**: `.close <file: string>`
   - **Example**:
     ```groff
     .open myFile "file.txt"
     .write myFile "Writing to file."
     .close myFile
     ```
31. **.color** - Set the output color for the text.
   - **Signature**: `.color <color: string>`
   - **Example**:
     ```groff
     .color blue
     This text will be in blue.
     .color  \" Reset to default color
     ```

32. **.composite** - Composite two characters.
   - **Signature**: `.composite <dest: register>, <src: register>`
   - **Example**:
     ```groff
     .nr a 97  \" ASCII for 'a'
     .nr b 98  \" ASCII for 'b'
     .composite a b
     ```

33. **.continue** - Continue interrupted text.
   - **Signature**: `.continue`
   - **Example**:
     ```groff
     Some text that was interrupted.
     .continue
     ```

34. **.cp** - Set compatibility mode percentage.
   - **Signature**: `.cp <percentage: number>`
   - **Example**:
     ```groff
     .cp 100  \" 100% compatibility with classic troff
     ```

35. **.cs** - Set constant space width for a font.
   - **Signature**: `.cs <font: string>, <space: number>, <stretch: number>`
   - **Example**:
     ```groff
     .cs R 10 2  \" Set constant space width for Roman font
     ```

36. **.cu** - Underline text for a given number of lines.
   - **Signature**: `.cu <lines: number?>`
   - **Example**:
     ```groff
     .cu 1
     This line will be underlined.
     ```

37. **.da** - Define a diversion (append mode).
   - **Signature**: `.da <register: register?>`
   - **Example**:
     ```groff
     .da appendDiv
     Appended content here.
     .da
     ```

38. **.de** - Define or redefine a macro.
   - **Signature**: `.de <macro: macro>`
   - **Example**:
     ```groff
     .de SayHello
     .ce
     Hello, world!
     ..
     .SayHello  \" Invokes the macro
     ```

39. **.de1** - Define a macro, adding a newline at the end.
   - **Signature**: `.de1 <macro: macro>`
   - **Example**:
     ```groff
     .de1 SayGoodbye
     .ce
     Goodbye, world!
     ..
     .SayGoodbye  \" Invokes the macro
     ```

40. **.defcolor** - Define a new color.
   - **Signature**: `.defcolor <name: string>, <model: string>, <components: string>`
   - **Example**:
     ```groff
     .defcolor myGreen rgb 0,128,0
     .color myGreen
     Text in custom green color.
     .color  \" Reset to default color
     ```

41. **.dei** - Define an indirect macro.
   - **Signature**: `.dei <macro: string>`
   - **Example**:
     ```groff
     .dei IndirectMacro
     .nr a 5
     Value of a is \\n[a].
     ..
     .IndirectMacro
     ```

42. **.dei1** - Define an indirect macro with a newline at the end.
   - **Signature**: `.dei1 <macro: string>`
   - **Example**:
     ```groff
     .dei1 IndirectMacroNewline
     .nr b 10
     Value of b is \\n[b].
     ..
     .IndirectMacroNewline
     ```

43. **.device** - Specify the output device.
   - **Signature**: `.device <name: string>`
   - **Example**:
     ```groff
     .device PS  \" Set output device to PostScript
     ```

44. **.devicem** - Specify the output device mode.
   - **Signature**: `.devicem <name: string>`
   - **Example**:
     ```groff
     .devicem color  \" Set device mode to color
     ```

45. **.di** - Divert output to a register.
   - **Signature**: `.di <register: register?>`
   - **Example**:
     ```groff
     .di outputDiv
     Diverted text content.
     .di
     ```

46. **.do** - Execute a diversion.
   - **Signature**: `.do <string: string>`
   - **Example**:
     ```groff
     .di myDiv
     Content inside myDiv.
     .di
     .do myDiv  \" Outputs the content of 'myDiv'
     ```

47. **.ds** - Define or redefine a string.
   - **Signature**: `.ds <name: string>, <content: string>`
   - **Example**:
     ```groff
     .ds MyString "This is a defined string."
     ```

48. **.ds1** - Define a string with a newline at the end.
   - **Signature**: `.ds1 <name: string>, <content: string>`
   - **Example**:
     ```groff
     .ds1 MyStringNewline "This string ends with a newline\n"
     ```

49. **.dt** - Set tab stops dynamically.
   - **Signature**: `.dt <tabset: string>`
   - **Example**:
     ```groff
     .dt T10,20,30  \" Sets tab stops at positions 10, 20, and 30
     ```

50. **.ec** - End change character.
   - **Signature**: `.ec <character: char>`
   - **Example**:
     ```groff
     .ec #  \" Sets '#' as the end change character
     ```

51. **.ecr** - Reset the escape character to its default.
   - **Signature**: `.ecr`
   - **Example**:
     ```groff
     .ecr  \" Reset escape character to default
     ```

52. **.ecs** - Save the current escape character.
   - **Signature**: `.ecs`
   - **Example**:
     ```groff
     .ecs  \" Saves the current escape character
     ```

53. **.el** - Else part of an if-else condition.
   - **Signature**: `.el`
   - **Example**:
     ```groff
     .if n .tm "It is nroff."
     .el .tm "It is not nroff."
     ```

54. **.em** - Set end of input trap macro.
   - **Signature**: `.em <macro: string>`
   - **Example**:
     ```groff
     .de EndMacro
     .tm "Reached the end of input."
     ..
     .em EndMacro
     ```

55. **.eo** - Turn off the escape mechanism.
   - **Signature**: `.eo`
   - **Example**:
     ```groff
     .eo  \" No longer recognize escape characters
     ```

56. **.ev** - Switch environment.
   - **Signature**: `.ev <environment: number>`
   - **Example**:
     ```groff
     .ev 2  \" Switch to environment 2
     ```

57. **.evc** - Switch environment conditionally.
   - **Signature**: `.evc <environment: number>`
   - **Example**:
     ```groff
     .evc 1  \" Conditionally switch to

 environment 1
     ```

58. **.ex** - Exit from GROFF.
   - **Signature**: `.ex`
   - **Example**:
     ```groff
     .ex  \" Exit from GROFF processing
     ```

59. **.fam** - Set the font family.
   - **Signature**: `.fam <family: string>`
   - **Example**:
     ```groff
     .fam Times  \" Set font family to Times
     ```

60. **.fc** - Set field delimiters.
   - **Signature**: `.fc <char: char>, <char?: char?>`
   - **Example**:
     ```groff
     .fc | ,  \" Set field delimiters to '|' and ','
     ```

61. **.fchar** - Define a fallback character.
   - **Signature**: `.fchar <name: string>, <description: string>`
   - **Example**:
     ```groff
     .fchar "fbA" "\\(Aa"  \" Defines a fallback character 'fbA' as \(Aa
     ```

62. **.fcolor** - Set the fill color for backgrounds.
   - **Signature**: `.fcolor <color: string>`
   - **Example**:
     ```groff
     .fcolor "cyan"
     Background is now cyan.
     .fcolor  \" Reset to default color
     ```

63. **.fi** - Fill text, which adjusts spaces to align both left and right margins.
   - **Signature**: `.fi`
   - **Example**:
     ```groff
     .fi  \" Enables filled text
     ```

64. **.fl** - Flush all output.
   - **Signature**: `.fl`
   - **Example**:
     ```groff
     .fl  \" Forces all unwritten output to be written
     ```

65. **.fp** - Mount a font at a specific position.
   - **Signature**: `.fp <font_position: number>, <font_name: string>`
   - **Example**:
     ```groff
     .fp 3 Courier  \" Mounts 'Courier' font at position 3
     ```

66. **.fschar** - Define a fallback space character.
   - **Signature**: `.fschar <name: string>, <description: string>`
   - **Example**:
     ```groff
     .fschar "fbSpace" "\\x'10'"  \" Defines a fallback space character with 10 units width
     ```

67. **.fspecial** - Designate a special font.
   - **Signature**: `.fspecial <name: string>`
   - **Example**:
     ```groff
     .fspecial "Symbol"  \" Designates 'Symbol' as a special font
     ```

68. **.ft** - Set the current font.
   - **Signature**: `.ft <font: string?>`
   - **Example**:
     ```groff
     .ft R  \" Set the font to Roman
     ```

69. **.ftr** - Translate one font to another.
   - **Signature**: `.ftr <original: string>, <replacement: string>`
   - **Example**:
     ```groff
     .ftr Times Helvetica  \" Translates 'Times' to 'Helvetica'
     ```

70. **.fzoom** - Zoom a font by changing its x and y magnification.
   - **Signature**: `.fzoom <font: string>, <x_mag: number>, <y_mag: number>`
   - **Example**:
     ```groff
     .fzoom Helvetica 1.5 1.5  \" Zooms 'Helvetica' by 1.5 times both horizontally and vertically
     ```

71. **.gcolor** - Set the glyph color.
   - **Signature**: `.gcolor <color: string>`
   - **Example**:
     ```groff
     .gcolor "red"
     This glyph will be red.
     .gcolor  \" Reset to default color
     ```

72. **.hc** - Set the hyphenation character.
   - **Signature**: `.hc <char: char>`
   - **Example**:
     ```groff
     .hc -  \" Sets the hyphenation character to '-'
     ```

73. **.hcode** - Set a specific hyphenation code.
   - **Signature**: `.hcode <code: string>`
   - **Example**:
     ```groff
     .hcode "en_us"  \" Sets the hyphenation code to English (US)
     ```

74. **.hla** - Set the hyphenation language.
   - **Signature**: `.hla <language: string>`
   - **Example**:
     ```groff
     .hla "Spanish"  \" Sets the hyphenation language to Spanish
     ```

75. **.hlm** - Set the hyphenation limit.
   - **Signature**: `.hlm <limit: number>`
   - **Example**:
     ```groff
     .hlm 2  \" Sets the hyphenation limit to 2
     ```

76. **.hpf** - Set the hyphenation pattern file.
   - **Signature**: `.hpf <pattern: string>`
   - **Example**:
     ```groff
     .hpf "/path/to/pattern.file"  \" Uses

 the specified pattern file for hyphenation
     ```

77. **.hpfa** - Append to the hyphenation pattern file.
   - **Signature**: `.hpfa <pattern: string>`
   - **Example**:
     ```groff
     .hpfa "additional.patterns"  \" Appends additional patterns to the current hyphenation pattern file
     ```

78. **.hpfcode** - Set a hyphenation pattern code.
   - **Signature**: `.hpfcode <code: string>`
   - **Example**:
     ```groff
     .hpfcode "en_us"  \" Sets the hyphenation pattern code for English (US)
     ```

79. **.hw** - Add a hyphenation exception word.
   - **Signature**: `.hw <word: string>`
   - **Example**:
     ```groff
     .hw "groff"  \" Adds 'groff' as an exception to standard hyphenation rules
     ```

80. **.hy** - Set hyphenation on or off.
   - **Signature**: `.hy <switch: number?>`
   - **Example**:
     ```groff
     .hy 1  \" Turns hyphenation on
     ```

81. **.hym** - Set minimum hyphenation margin.
   - **Signature**: `.hym <min: number>`
   - **Example**:
     ```groff
     .hym 3  \" Sets the minimum hyphenation margin to 3
     ```

82. **.hys** - Set minimum hyphenation space.
   - **Signature**: `.hys <min: number>`
   - **Example**:
     ```groff
     .hys 2  \" Sets the minimum space for hyphenation to 2
     ```

83. **.ie** - If-else condition.
   - **Signature**: `.ie <condition: expression> <true-macro: macro>`
   - **Example**:
     ```groff
     .ie n .tm "It's nroff"
     .el .tm "It's troff"
     ```

84. **.if** - If condition.
   - **Signature**: `.if <condition: expression> <true-macro: macro>`
   - **Example**:
     ```groff
     .if n .tm "Running nroff"
     ```

85. **.ig** - Ignore input until an ending macro.
   - **Signature**: `.ig <end: string?>`
   - **Example**:
     ```groff
     .ig END
     This text will be ignored.
     END
     ```

86. **.in** - Set or increment indent.
   - **Signature**: `.in <indent: size>, <increment?: boolean?>`
   - **Example**:
     ```groff
     .in 2i  \" Sets indent to 2 inches
     ```

87. **.it** - Set input line trap.
   - **Signature**: `.it <lines: number>, <macro: macro>`
   - **Example**:
     ```groff
     .it 1 PrintLine
     .de PrintLine
     .tm "This line is trapped"
     ..
     ```

88. **.itc** - Set input line trap with continuation.
   - **Signature**: `.itc <lines: number>, <macro: macro>`
   - **Example**:
     ```groff
     .itc 3 ContinueTrap
     .de ContinueTrap
     .tm "Continuing to trap after three lines"
     ..
     ```

89. **.kern** - Adjust kerning amount.
   - **Signature**: `.kern <amount: number>`
   - **Example**:
     ```groff
     .kern 5  \" Adjusts kerning by 5 units
     ```

90. **.lc** - Set leader character.
   - **Signature**: `.lc <char: char>`
   - **Example**:
     ```groff
     .lc .  \" Sets the leader character to a dot
     ```

91. **.length** - Get the length of a string in a register.
   - **Signature**: `.length <register: register>, <string: string>`
   - **Example**:
     ```groff
     .ds myString "Hello, world!"
     .length L myString
     .tm "\\n[L]u units long"
     ```

92. **.lf** - Set line and file for debugging.
   - **Signature**: `.lf <line: number>, <file: string?>`
   - **Example**:
     ```groff
     .lf 100 myfile.groff
     ```

93. **.lg** - Ligature control.
   - **Signature**: `.lg <flag: number>`
   - **Example**:
     ```groff
     .lg 0  \" Turns off ligatures
     ```

94. **.linetabs** - Set handling for tabs in line mode.
   - **Signature**: `.linetabs <mode: enum>`
   - **Example**:
     ```groff
     .linetabs on  \" Enables tab handling in line mode
     ```

95. **.ll** - Set line length.
   - **Signature**: `.ll <length: size>`
   - **Example**:
     ```groff
     .ll 6i  \" Sets line length to 6 inches
     ```

96. **.ls** - Set line spacing.
   - **Signature**: `.ls <space: number>`
   - **Example**:
     ```groff
     .ls 2  \" Sets line spacing to double
     ```

97. **.lsm** - Set last line spacing margin.
   - **Signature**: `.lsm <space: number>`
   - **Example**:
     ```groff
     .lsm 1

  \" Sets last line spacing margin to 1
     ```

98. **.lt** - Set title length.
   - **Signature**: `.lt <length: size>`
   - **Example**:
     ```groff
     .lt 7.5i  \" Sets title length to 7.5 inches
     ```

99. **.mc** - Set marginal character.
   - **Signature**: `.mc <margin: number?>`
   - **Example**:
     ```groff
     .mc | 5  \" Sets a marginal character '|' at every 5th column
     ```

100. **.mk** - Mark vertical place.
    - **Signature**: `.mk <register: register>`
    - **Example**:
      ```groff
      .mk A
      .sp 3i
      .tm "\\n[A]u down from marked place"
      ```

101. **.mso** - Mount standard output.
   - **Signature**: `.mso <file: string>`
   - **Example**:
     ```groff
     .mso some_macros.tmac
     ```

102. **.msoquiet** - Mount standard output quietly without any confirmation or output messages.
   - **Signature**: `.msoquiet`
   - **Example**:
     ```groff
     .msoquiet
     ```

103. **.na** - No adjust. This request disables line adjustment.
   - **Signature**: `.na`
   - **Example**:
     ```groff
     .na
     ```

104. **.ne** - Need vertical space. Ensures that a specified amount of vertical space is available.
   - **Signature**: `.ne <amount: number>`
   - **Example**:
     ```groff
     .ne 2i
     ```

105. **.nf** - No fill. This request turns off line filling and adjustment.
   - **Signature**: `.nf`
   - **Example**:
     ```groff
     .nf
     Here is some preformatted text.
     .fi  \" Return to filled text
     ```

106. **.nh** - No hyphenation. Turns off hyphenation.
   - **Signature**: `.nh`
   - **Example**:
     ```groff
     .nh
     ```

107. **.nm** - Set number mode. Specifies how lines should be numbered.
   - **Signature**: `.nm <increment: number?>, <start: number?>, <width: number?>, <pad: number?>`
   - **Example**:
     ```groff
     .nm 1 1 5 0
     ```

108. **.nn** - No number next number of lines. This request suppresses line numbers for the specified number of lines.
   - **Signature**: `.nn <number: number>`
   - **Example**:
     ```groff
     .nn 10
     ```

109. **.nop** - No operation. This request is often used as a placeholder in macros.
   - **Signature**: `.nop`
   - **Example**:
     ```groff
     .nop
     ```

110. **.nr** - Set or increment a number register.
   - **Signature**: `.nr <register: register>, <value: number>, <increment?: boolean?>`
   - **Example**:
     ```groff
     .nr Counter 10
     .nr Counter +1  \" Increment Counter by 1
     ```

111. **.nroff** - Switch to nroff mode. Useful when using groff to emulate nroff behavior.
   - **Signature**: `.nroff`
   - **Example**:
     ```groff
     .nroff
     ```

112. **.ns** - No space mode. Suppresses spacing that normally occurs after macros.
   - **Signature**: `.ns`
   - **Example**:
     ```groff
     .ns
     ```

113. **.nx** - Switch to next file. Terminates processing of the current file and continues with the next file.
   - **Signature**: `.nx <file: string>`
   - **Example**:
     ```groff
     .nx next_file.groff
     ```

114. **.open** - Open a file for writing.
   - **Signature**: `.open <file: string>`
   - **Example**:
     ```groff
     .open myFile
     .write myFile "Writing to this file."
     ```

115. **.opena** - Open a file for appending.
   - **Signature**: `.opena <file: string>`
   - **Example**:
     ```groff
     .opena myFile
     .write myFile "Appending this line to the file."
     ```

116. **.os** - Output saved lines. Useful in combination with diversion commands.
   - **Signature**: `.os`
   - **Example**:
     ```groff
     .os
     ```

117. **.output** - Set an output line processing macro.
   - **Signature**: `.output <macro: macro>`
   - **Example**:
     ```groff
     .de myOutput
     .tm "Processing output line."
     ..
     .output myOutput
     ```

118. **.pc** - Set the page number character.
   - **Signature**: `.pc <char: char>`
   - **Example**:
     ```groff
     .pc %
     ```

119. **.pev** - Preserve environment. Saves the current environment

 settings.
   - **Signature**: `.pev`
   - **Example**:
     ```groff
     .pev
     ```

120. **.pi** - Pipe output to a command.
   - **Signature**: `.pi <command: string>`
   - **Example**:
     ```groff
     .pi "sort"
     This line will be sorted.
     ```

121. **.pl** - Set page length.
   - **Signature**: `.pl <length: size>`
   - **Example**:
     ```groff
     .pl 11i  \" Sets the page length to 11 inches
     ```

122. **.pm** - Print macro definitions.
   - **Signature**: `.pm`
   - **Example**:
     ```groff
     .pm  \" Prints all macro definitions to the terminal
     ```

123. **.pn** - Set next page number.
   - **Signature**: `.pn <number: number>`
   - **Example**:
     ```groff
     .pn 10  \" Sets the next page number to 10
     ```

124. **.pnr** - Print number register.
   - **Signature**: `.pnr`
   - **Example**:
     ```groff
     .pnr  \" Prints the values of all number registers
     ```

125. **.po** - Set page offset.
   - **Signature**: `.po <offset: size>`
   - **Example**:
     ```groff
     .po 2i  \" Sets the page offset to 2 inches
     ```

126. **.ps** - Set point size.
   - **Signature**: `.ps <size: number>`
   - **Example**:
     ```groff
     .ps 12  \" Sets the point size to 12
     ```

127. **.psbb** - Process PostScript bounding box.
   - **Signature**: `.psbb <filename: string>`
   - **Example**:
     ```groff
     .psbb "image.eps"
     ```

128. **.pso** - Pipe output to shell command.
   - **Signature**: `.pso <command: string>`
   - **Example**:
     ```groff
     .pso "lpr"  \" Pipes output to the printer
     ```

129. **.ptr** - Push trace state.
   - **Signature**: `.ptr`
   - **Example**:
     ```groff
     .ptr  \" Saves the current trace state
     ```

130. **.pvs** - Set provisional vertical space.
   - **Signature**: `.pvs <space: number>`
   - **Example**:
     ```groff
     .pvs 12p  \" Sets provisional vertical space to 12 points
     ```

131. **.rchar** - Remove character definition.
   - **Signature**: `.rchar <character: char>`
   - **Example**:
     ```groff
     .rchar "x"  \" Removes the character definition for 'x'
     ```

132. **.rd** - Read input until an end macro.
   - **Signature**: `.rd <macro: macro>`
   - **Example**:
     ```groff
     .rd EndInput
     Enter your input here.
     EndInput
     ```

133. **.return** - Return from diversion.
   - **Signature**: `.return`
   - **Example**:
     ```groff
     .return  \" Ends the current diversion and returns to the main stream
     ```

134. **.rfschar** - Remove a fallback space character.
   - **Signature**: `.rfschar <name: string>`
   - **Example**:
     ```groff
     .rfschar "fbSpace"
     ```

135. **.rj** - Right justify.
   - **Signature**: `.rj <justify: number?>`
   - **Example**:
     ```groff
     .rj  \" Right justifies the following text
     ```

136. **.rm** - Remove macro or string.
   - **Signature**: `.rm <name: string>`
   - **Example**:
     ```groff
     .rm "myMacro"  \" Removes the macro or string named 'myMacro'
     ```

137. **.rn** - Rename string or number register.
   - **Signature**: `.rn <old: string>, <new: string>`
   - **Example**:
     ```groff
     .rn "oldName" "newName"
     ```

138. **.rnn** - Rename number register.
   - **Signature**: `.rnn <old: string>, <new: string>`
   - **Example**:
     ```groff
     .rnn "oldReg" "newReg"
     ```

139. **.rr** - Remove register.
   - **Signature**: `.rr <register: register>`
   - **Example**:
     ```groff
     .rr myRegister  \" Removes the register named 'myRegister'
     ```

140. **.rs**
 - Restore space mode.
   - **Signature**: `.rs`
   - **Example**:
     ```groff
     .rs  \" Restores normal space mode after using .ns
     ```

141. **.rt** - Return from trap.
   - **Signature**: `.rt <tag: string>`
   - **Example**:
     ```groff
     .rt "myTag"  \" Returns from a trap set with this tag
     ```

142. **.schar** - Set special character.
   - **Signature**: `.schar <name: string>, <description: string>`
   - **Example**:
     ```groff
     .schar "xS" "\(*S"  \" Defines a special character 'xS' as \(*S
     ```

143. **.shc** - Set soft hyphen character.
   - **Signature**: `.shc <character: char>`
   - **Example**:
     ```groff
     .shc "-"  \" Sets the soft hyphen character to '-'
     ```

144. **.shift** - Shift output horizontally.
   - **Signature**: `.shift <amount: number>`
   - **Example**:
     ```groff
     .shift 10  \" Shifts the output 10 units to the right
     ```

145. **.sizes** - Set permissible sizes.
   - **Signature**: `.sizes <list: number>`
   - **Example**:
     ```groff
     .sizes 10,12,14  \" Sets permissible point sizes to 10, 12, and 14
     ```

146. **.so** - Source a file.
   - **Signature**: `.so <file: string>`
   - **Example**:
     ```groff
     .so macros.tmac  \" Includes the contents of 'macros.tmac'
     ```

147. **.soquiet** - Source a file quietly without logging.
   - **Signature**: `.soquiet`
   - **Example**:
     ```groff
     .soquiet  \" Instructs GROFF to source files quietly
     ```

148. **.sp** - Space vertically.
   - **Signature**: `.sp <distance: size?>`
   - **Example**:
     ```groff
     .sp 1i  \" Adds 1 inch of vertical space
     ```

149. **.special** - Process text as special.
   - **Signature**: `.special <text: string>`
   - **Example**:
     ```groff
     .special "This text is processed in a special way"
     ```

150. **.spreadwarn** - Set spread warning limit.
   - **Signature**: `.spreadwarn <number: number>`
   - **Example**:
     ```groff
     .spreadwarn 5  \" Sets the warning limit for text spread to 5 units
     ```

151. **.ss** - Set sentence spacing.
   - **Signature**: `.ss <space: number>, <stretch?: number?>`
   - **Example**:
     ```groff
     .ss 12 3  \" Sets sentence spacing to 12 units with an optional stretch of 3 units
     ```

152. **.stringdown** - Convert string to lowercase.
   - **Signature**: `.stringdown <string: string>`
   - **Example**:
     ```groff
     .stringdown "HELLO"  \" Outputs 'hello'
     ```

153. **.stringup** - Convert string to uppercase.
   - **Signature**: `.stringup <string: string>`
   - **Example**:
     ```groff
     .stringup "hello"  \" Outputs 'HELLO'
     ```

154. **.sty** - Set style sheet.
   - **Signature**: `.sty <stylesheet: string>`
   - **Example**:
     ```groff
     .sty "myStyles.tmac"  \" Applies the style sheet 'myStyles.tmac'
     ```

155. **.substring** - Extract substring.
   - **Signature**: `.substring <dest: register>, <src: string>, <start: number>, <length: number>`
   - **Example**:
     ```groff
     .ds myStr "Hello, world!"
     .substring mySubStr myStr 0 5
     .tm "\\*[mySubStr]"  \" Outputs 'Hello'
     ```

156. **.sv** - Save register.
   - **Signature**: `.sv <register: register>`
   - **Example**:
     ```groff
     .nr counter 100
     .sv counter
     .nr counter 200
     ```

157. **.sy** - Execute a shell command.
   - **Signature**: `.sy <command: string>`
   - **Example**:
     ```groff
     .sy ls -l  \" Executes 'ls -l' in the shell and

 displays the output
     ```

158. **.ta** - Set tab stops.
   - **Signature**: `.ta <list: size>`
   - **Example**:
     ```groff
     .ta 1i 2i 3i  \" Sets tab stops at 1 inch, 2 inches, and 3 inches
     ```

159. **.tag** - Set tag for vertical motion.
   - **Signature**: `.tag <name: string>`
   - **Example**:
     ```groff
     .tag "SectionStart"
     ```

160. **.taga** - Adjust tag for vertical motion.
   - **Signature**: `.taga <name: string>, <adjustment: number>`
   - **Example**:
     ```groff
     .taga "SectionStart" 5
     ```

161. **.tc** - Translate input character.
   - **Signature**: `.tc <character: char>`
   - **Example**:
     ```groff
     .tc \*  \" Translates '*' into a specified replacement character
     ```

162. **.ti** - Temporary indent.
   - **Signature**: `.ti <indent: size>`
   - **Example**:
     ```groff
     .ti 2i  \" Temporarily indents the next line by 2 inches
     ```

163. **.tkf** - Toggle kerning feature.
   - **Signature**: `.tkf <feature: string>, <value: string>`
   - **Example**:
     ```groff
     .tkf "liga" "off"  \" Turns off ligature feature
     ```

164. **.tl** - Three-part title.
   - **Signature**: `.tl <left: string>, <center: string>, <right: string>`
   - **Example**:
     ```groff
     .tl 'Left Part' 'Center Part' 'Right Part'
     ```

165. **.tm** - Print to terminal.
   - **Signature**: `.tm <text: string>`
   - **Example**:
     ```groff
     .tm "This is a message to the terminal."
     ```

166. **.tm1** - Print to terminal with newline.
   - **Signature**: `.tm1 <text: string>`
   - **Example**:
     ```groff
     .tm1 "This message ends with a newline\n"
     ```

167. **.tmc** - Define terminal input macro.
   - **Signature**: `.tmc <macro: macro>`
   - **Example**:
     ```groff
     .de ReadInput
     Read this input: \\$1
     ..
     .tmc ReadInput
     ```

168. **.tr** - Translate characters.
   - **Signature**: `.tr <old: char>, <new: char>`
   - **Example**:
     ```groff
     .tr ab  \" Translates 'a' to 'b'
     ```

169. **.trf** - Translate font.
   - **Signature**: `.trf <font: string>`
   - **Example**:
     ```groff
     .trf Times  \" Translates current font to Times
     ```

170. **.trin** - Set temporary right indent.
   - **Signature**: `.trin <increment: size>`
   - **Example**:
     ```groff
     .trin 1i  \" Sets a temporary right indent of 1 inch
     ```

171. **.trnt** - Set temporary no-trap mode.
   - **Signature**: `.trnt <temporary: number>`
   - **Example**:
     ```groff
     .trnt 1  \" Temporarily disables traps
     ```

172. **.troff** - Switch to troff mode.
   - **Signature**: `.troff`
   - **Example**:
     ```groff
     .troff  \" Switch processing to troff mode
     ```

173. **.uf** - Set underline font.
   - **Signature**: `.uf <font: number>`
   - **Example**:
     ```groff
     .uf 2  \" Sets the font used for underlining to font position 2
     ```

174. **.ul** - Underline text.
   - **Signature**: `.ul <lines: number?>`
   - **Example**:
     ```groff
     .ul 3  \" Underlines the next three lines
     ```

175. **.unformat** - Unformat input.
   - **Signature**: `.unformat`
   - **Example**:
     ```groff
     .unformat  \" Turns off all formatting commands
     ```

176. **.vpt** - Validate page top.
   - **Signature**: `.vpt`
   - **Example**:
     ```groff
     .vpt  \" Validates that the page top is correct and adjusts if necessary
     ```

177. **.vs** - Set vertical space.
   - **Signature**: `.vs <space: size>`
   - **Example**:
     ```groff
     .vs 12p  \" Sets vertical space to 12 points
     ```

178. **.warn** - Set warning level.
   - **Signature**: `.warn <level: number>`
   - **Example**:
     ```groff
     .warn 2  \" Sets the warning level to 2
     ```

179. **.warnscale** - Scale warning output.
   - **Signature**: `.

warnscale <factor: number>`
   - **Example**:
     ```groff
     .warnscale 1.5  \" Scales warning messages by a factor of 1.5
     ```

180. **.wh** - Set "when" trap.
   - **Signature**: `.wh <position: number>, <macro: macro>`
   - **Example**:
     ```groff
     .wh -1i Footer  \" Sets a trap for the footer 1 inch from the bottom
     ```

181. **.while** - Loop while condition is true.
   - **Signature**: `.while <condition: expression>, <macro: macro>`
   - **Example**:
     ```groff
     .nr count 5
     .de decrement
     .nr count -1
     ..
     .while gt \\n[count] 0 decrement
     ```

182. **.write** - Write text to a file.
   - **Signature**: `.write <file: string>, <text: string>`
   - **Example**:
     ```groff
     .open myfile
     .write myfile "This text goes into myfile."
     ```

183. **.writec** - Write text to a file with a checksum.
   - **Signature**: `.writec <file: string>, <text: string>`
   - **Example**:
     ```groff
     .open myfile
     .writec myfile "This text is checksummed."
     ```

184. **.writem** - Write text to a macro.
   - **Signature**: `.writem <macro: macro>`
   - **Example**:
     ```groff
     .de StoreText
     Stored text: \\$1
     ..
     .writem StoreText "Text to be stored."
     ```

