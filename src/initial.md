# Position-agnostic computed values

In [CSS level 2 § 9.7](https://www.w3.org/TR/CSS2/visuren.html#dis-pos-flo),
the computed values of display, position, and float are normalized
to avoid clashing values.

When this specification refers to the position-agnostic computed values
for these properties,
these values should be used:

  * display: the computed value of display that would have resulted if § 9.7 had not been applied.
  * position: the keyword "static"
  * float: the computed value of display that would have resulted if § 9.7 had not been applied.

[CSS level 2 § 9.7]: https://www.w3.org/TR/CSS2/visuren.html#dis-pos-flo

