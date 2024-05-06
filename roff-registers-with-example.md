1. **Number of Arguments (`$`)**: Contains the number of arguments passed to the current macro.
   ```roff
   .de example
   There are \\n($) arguments.
   ..
   .example arg1 arg2 arg3
   ```

2. **Process ID (`$$`)**: Contains the process ID of the GROFF process.
   ```roff
   The process ID is \\n($$).
   ```

3. **Last Diversion's Vertical Size (`%`)**: Stores the vertical size of the last diversion.
   ```roff
   .di some_diversion
   Some text in diversion.
   .di
   Last diversion's height was \\n(%)u units.
   ```

4. **Current Page Number (`.`)**: Holds the current page number.
   ```roff
   This is page \\n(.).
   ```

5. **Number of Arguments in Current Macro (`.$`)**: Stores the number of arguments in the current macro.
   ```roff
   .de show_args
   This macro was called with \\n(.$) arguments.
   ..
   .show_args one two three
   ```

6. **Space Left on Page (`a`)**: Indicates the amount of space left on the current page.
   ```roff
   Space left on this page: \\n(a)u units.
   ```

7. **Current Line Number (`c`)**: Contains the current line number in the input file.
   ```roff
   This is line \\n(c) in the input file.
   ```

8. **Character Depth (`cdp`)**: Indicates the depth of the current character.
   ```roff
   Current character depth: \\n(cdp)u.
   ```

9. **Character Height (`cht`)**: Holds the height of the current character.
   ```roff
   Current character height: \\n(cht)u.
   ```

10. **Compatibility Mode Flag (`cp`)**: Indicates whether compatibility mode is on.
    ```roff
    Compatibility mode is \\n(cp).
    ```

11. **Depth of Last Output Line (`d`)**: Contains the depth of the last output line.
    ```roff
    Last line depth: \\n(d)u.
    ```

12. **Current Environment Number (`ev`)**: Holds the number of the current environment.
    ```roff
    Current environment: \\n(ev).
    ```

13. **Current Font Name (`F`)**: Stores the name of the current font.
    ```roff
    Current font is \\*[F].
    ```

14. **Current Font Number (`f`)**: Contains the current font number.
    ```roff
    Current font number: \\n(f).
    ```

15. **Current Font Family Name (`fam`)**: Holds the name of the current font family.
    ```roff
    Current font family: \\*[fam].
    ```

16. **Current Horizontal Line Position (`H`)**: Stores the current horizontal line position.
    ```roff
    Current horizontal position: \\n(H)u.
    ```

17. **Current Vertical Line Position (`h`)**: Contains the current vertical line position.
    ```roff
    Current vertical position: \\n(h)u.
    ```

18. **Current Indentation (`i`)**: Indicates the current indentation.
    ```roff
    Current indentation: \\n(i)u.
    ```

19. **Current Indent Amount (`in`)**: Holds the amount of current indent.
    ```roff
    Current indent amount: \\n(in)u.
    ```

20. **Current Adjustment Mode (`j`)**: Stores the current adjustment mode.
    ```roff
    Current adjustment mode: \\n(j).
    ```

21. **Kerning Flag (`kern`)**: Indicates whether kerning is enabled.
    ```roff
    Kerning is \\n(kern).
    ```

22. **Current Macro Name (`m`)**: Contains the name of the current macro.
    ```roff
    .de current_macro
    .  The name of this macro is '\\*[m]'.
    ..
    .current_macro
    ```

23. **Needed Space Amount (`ne`)**: Holds the amount of space needed.
    ```roff
    Needed

 space: \\n(ne)u.
    ```

24. **Number Mode Flag (`nm`)**: Indicates if number mode is on.
    ```roff
    Number mode is \\n(nm).
    ```

25. **No-space Mode Flag (`ns`)**: Indicates if no-space mode is on.
    ```roff
    No-space mode is \\n(ns).
    ```

26. **Current Page Offset (`o`)**: Stores the current page offset.
    ```roff
    Current page offset: \\n(o)u.
    ```

27. **Current Page Length (`p`)**: Holds the current page length.
    ```roff
    Current page length: \\n(p)u.
    ```

28. **Next Page Number (`pn`)**: Contains the number of the next page.
    ```roff
    Next page number is \\n(pn).
    ```

29. **Current Point Size (`ps`)**: Stores the current point size.
    ```roff
    Current point size: \\n(ps)p.
    ```

30. **Provisional Vertical Spacing (`pvs`)**: Indicates the provisional vertical spacing.
    ```roff
    Provisional vertical spacing: \\n(pvs)u.
    ```

31. **Current Tab Settings (`tabs`)**: Holds the current tab settings.
    ```roff
    Current tabs are set to: \\*[tabs].
    ```

32. **Truncate Flag (`trunc`)**: Indicates whether truncation is enabled.
    ```roff
    Truncation is \\n(trunc).
    ```

33. **Underline Position (`u`)**: Contains the underline position.
    ```roff
    Underline position: \\n(u)u.
    ```

34. **Vertical Resolution (`v`)**: Stores the vertical resolution.
    ```roff
    Vertical resolution: \\n(v).
    ```

35. **Width of Last Line (`w`)**: Holds the width of the last line.
    ```roff
    Width of the last line: \\n(w)u.
    ```

36. **Warning Level (`warn`)**: Indicates the current warning level.
    ```roff
    Warning level: \\n(warn).
    ```

37. **Horizontal Resolution (`x`)**: Contains the horizontal resolution.
    ```roff
    Horizontal resolution: \\n(x).
    ```

38. **System Hours (`hours`)**: Stores the system hours.
    ```roff
    System hours: \\n(hours).
    ```

39. **System Minutes (`minutes`)**: Holds the system minutes.
    ```roff
    System minutes: \\n(minutes).
    ```

40. **System Seconds (`seconds`)**: Contains the system seconds.
    ```roff
    System seconds: \\n(seconds).
    ```


41. **System Year (`year`)**: Stores the current system year.
    ```roff
    The current year is \\n(year).
    ```

42. **Lower Left X-Coordinate (`llx`)**: Holds the lower left x-coordinate of the page.
    ```roff
    Lower left x-coordinate: \\n(llx)u.
    ```

43. **Lower Left Y-Coordinate (`lly`)**: Contains the lower left y-coordinate of the page.
    ```roff
    Lower left y-coordinate: \\n(lly)u.
    ```

44. **Line Number (`ln`)**: Stores the current line number.
    ```roff
    This is line \\n(ln).
    ```

45. **Line Space Size (`lss`)**: Holds the line space size.
    ```roff
    Line space size is \\n(lss)p.
    ```

46. **Output Page Maximum X-Coordinate (`opmaxx`)**: Contains the maximum x-coordinate for the current output page.
    ```roff
    Output page max x-coordinate: \\n(opmaxx)u.
    ```

47. **Output Page Maximum Y-Coordinate (`opmaxy`)**: Stores the maximum y-coordinate for the current output page.
    ```roff
    Output page max y-coordinate: \\n(opmaxy)u.
    ```

48. **Output Page Minimum X-Coordinate (`opminx`)**: Holds the minimum x-coordinate for the current output page.
    ```roff
    Output page min x-coordinate: \\n(opminx)u.
    ```

49. **Output Page Minimum Y-Coordinate (`opminy`)**: Contains the minimum y-coordinate for the current output page.
    ```roff
    Output page min y-coordinate: \\n(opminy)u.
    ```

50. **Upper Right X-Coordinate (`urx`)**: Stores the upper right x-coordinate.
    ```roff
    Upper right x-coordinate: \\n(urx)u.
    ```

51. **Upper Right Y-Coordinate (`ury`)**: Holds the upper right y-coordinate.
    ```roff
    Upper right y-coordinate: \\n(ury)u.
    ```

52. **Line Length (`l`)**: Contains the current line length.
    ```roff
    Current line length: \\n(l)u.
    ```

53. **Line Length (`ll`)**: Also used to store the line length, providing a shorthand.
    ```roff
    Line length (shorthand): \\n(ll)u.
    ```

54. **Title Length (`lt`)**: Stores the length of the title.
    ```roff
    Title length: \\n(lt)u.
    ```

55. **Indentation (`in`)**: Holds the current indentation setting, similar to the `i` register.
    ```roff
    Current indentation: \\n(in)u.
    ```

56. **Vertical Position Top (`vpt`)**: Contains the top of the current vertical position.
    ```roff
    Validate page top: \\n(vpt)u.
    ```

57. **Horizontal Position (`H`)**: Also holds the current horizontal position.
    ```roff
    Current horizontal position (alternate): \\n(H)u.
    ```

58. **Hyphenation Language (`hla`)**: Stores the current hyphenation language setting.
    ```roff
    Hyphenation language is set to: \\*[hla].
    ```

59. **Hyphenation Limit (`hlm`)**: Contains the hyphenation limit.
    ```roff
    Hyphenation limit: \\n(hlm).
    ```

60. **Hyphenation Flag (`hy`)**: Indicates whether hyphenation is enabled.
    ```roff
    Hyphenation is \\n(hy) (0 for off, 1 for on).
    ```

61. **Hyphenation Margin (`hym`)**: Stores the minimum margin before hyphenating.
    ```roff
    Minimum hyphenation margin: \\n(hym)p.
    ```

62. **Hyphenation Space (`hys`)**: Holds the minimum space for hyphenation.
    ```roff
    Minimum hyphenation space: \\n(h

ys)p.
    ```

63. **No Numbering (`nn`)**: Contains the number of lines with no numbering.
    ```roff
    Number of no-number lines: \\n(nn).
    ```

64. **Number Mode (`nm`)**: Indicates if numbering is active.
    ```roff
    Number mode is: \\n(nm) (1 for on, 0 for off).
    ```

65. **Needed Vertical Space (`ne`)**: Specifies how much vertical space is needed.
    ```roff
    Needed vertical space: \\n(ne)u.
    ```

66. **Page Offset (`o`)**: Stores the horizontal offset of the current page.
    ```roff
    Current page offset: \\n(o)u.
    ```

67. **Page Length (`p`)**: Indicates the length of the current page.
    ```roff
    Current page length: \\n(p)u.
    ```

68. **Next Page Number (`pn`)**: Specifies the number of the next page to be printed.
    ```roff
    Next page number will be: \\n(pn).
    ```

69. **Point Size (`ps`)**: Holds the current point size of the text.
    ```roff
    Current point size: \\n(ps)p.
    ```

70. **Provisional Vertical Spacing (`pvs`)**: Specifies provisional vertical spacing.
    ```roff
    Provisional vertical spacing: \\n(pvs)u.
    ```

71. **Tab Settings (`tabs`)**: Contains the current settings for tab stops.
    ```roff
    Current tab settings: \\*[tabs].
    ```

72. **Truncation Flag (`trunc`)**: Indicates if truncation is active.
    ```roff
    Truncation flag: \\n(trunc).
    ```

73. **Underline Position (`u`)**: Specifies the position for underlining.
    ```roff
    Underline position: \\n(u)u.
    ```

74. **Vertical Resolution (`v`)**: Holds the vertical resolution of the output device.
    ```roff
    Vertical resolution: \\n(v) dots per inch.
    ```

75. **Width of Last Line (`w`)**: Indicates the width of the last formatted line.
    ```roff
    Width of the last line: \\n(w)u.
    ```

76. **Warning Level (`warn`)**: Specifies the warning level set in GROFF.
    ```roff
    Current warning level: \\n(warn).
    ```

77. **Horizontal Resolution (`x`)**: Stores the horizontal resolution of the output device.
    ```roff
    Horizontal resolution: \\n(x) dots per inch.
    ```

78. **System Hours (`hours`)**: Contains the system hours at the time of processing.
    ```roff
    System hours: \\n(hours).
    ```

79. **System Minutes (`minutes`)**: Specifies the system minutes at the time of processing.
    ```roff
    System minutes: \\n(minutes).
    ```

80. **System Seconds (`seconds`)**: Holds the system seconds at the time of processing.
    ```roff
    System seconds: \\n(seconds).
    ```

81. **System Year (`year`)**: Contains the year according to the system's clock.
    ```roff
    The current year is \\n(year).
    ```

82. **Lower Left X-Coordinate (`llx`)**: Stores the lower left x-coordinate of the page.
    ```roff
    Lower left x-coordinate: \\n(llx)u.
    ```

83. **Lower Left Y-Coordinate (`lly`)**: Holds the lower left y-coordinate of the page.
    ```roff
    Lower left y-coordinate: \\n(lly)u.
    ```

84. **Line Number (`ln`)**: Contains the current line number in the input.
    ```roff
    Current line number: \\n(ln).
    ```

85. **Line Space Size (`lss`)**: Indicates the space between lines.
    ```roff
    Line space size: \\n(lss)p.
    ```

86. **Output Page Maximum X-Coordinate (`opmaxx`)**: Holds the maximum x-coordinate for the current output page.
    ```roff
    Output page max x-coordinate: \\n(opmaxx)u.
    ```

87. **Output Page Maximum Y-Coordinate (`opmaxy`)**: Specifies the maximum y-coordinate for the current output page.
    ```roff
    Output page max y-coordinate: \\n(opmaxy)u.
    ```

88. **Output Page Minimum X-Coordinate (`opminx`)**: Contains the minimum x-coordinate for the current output page.
    ```roff
    Output page min x-coordinate: \\n(opminx)u.
    ```

89. **Output Page Minimum Y-Coordinate (`opminy`)**: Indicates the minimum y-coordinate for the current output page.
    ```roff
    Output page min y-coordinate: \\n(opminy)u.
    ```

90. **Upper Right X-Coordinate (`urx`)**: Stores the upper right x-coordinate.
    ```roff
    Upper right x-coordinate: \\n(urx)u.
    ```

91. **Upper Right Y-Coordinate (`ury`)**: Holds the upper right y-coordinate.
    ```roff
    Upper right y-coordinate: \\n(ury)u.
    ```

92. **Line Length (`l`)**: Contains the current line length.
    ```roff
    Current line length: \\n(l)u.
    ```

93. **Line Length (`ll`)**: Also used to store the line length, providing a shorthand.
    ```roff
    Line length (shorthand): \\n(ll)u.
    ```

94. **Title Length (`lt`)**: Stores the length of the title.
    ```roff
    Title length: \\n(lt)u.
    ```

95. **Indentation (`in`)**: Holds the current indentation setting, similar to the `i` register.
    ```roff
    Current indentation: \\n(in)u.
    ```

96. **Vertical Position Top (`vpt`)**: Contains the top of the current vertical position.
    ```roff
    Validate page top: \\n(vpt)u.
    ```

97. **Hyphenation Language (`hla`)**: Stores the current hyphenation language setting.
    ```roff
    Hyphenation language is set to: \\*[hla].
    ```

98. **Hyphenation Limit (`hlm`)**: Contains the hyphenation limit.
    ```roff
    Hyphenation limit: \\n(hlm).
    ```

99. **Hyphenation Flag (`hy`)**: Indicates whether hyphenation is enabled.
    ```roff
    Hyphenation is \\n(hy) (0 for off, 1 for on).
    ```

100. **Hyphenation Margin (`hym`)**: Stores the minimum margin before hyphenating.
    ```roff
    Minimum hyphenation margin: \\n(hym)p.
    ```

101. **Hyphenation Space (`hys`)**: Holds the minimum space for hyphenation.
    ```roff
    Minimum hyphenation space: \\n(hys)p.
    ```

102. **No Numbering (`nn`)**: Contains the number of lines with no numbering.
    ```roff
    Number of no-number lines: \\n(nn).
    ```

103. **Font Number (`fn`)**: Holds the font number, often used in conjunction with `.ft`.
    ```roff
    .ft 2
    Using font number: \\n(fn).
    ```

104. **Tab Width (`tabwidth`)**: Indicates the width set for tabs.
    ```roff
    Tab width: \\n(tabwidth)u.
    ```


