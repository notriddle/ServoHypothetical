# Introduction

In the specification for [CSS Basic Box Model level 3 § 9.6][],
this language is used to describe how to compute the static position of an
absolutely positioned block:

> For the purposes of this section and the next, the term static position (of an element) refers, roughly, to the position an element would have had in the normal flow. [...] But rather than actually calculating the dimensions of that hypothetical box, user agents are free to make a guess at its probable position. 

This specification defines how to compute or guess static position.
These algorithms need to be defined for web compatibility.

[CSS Basic Box Model level 3 § 9.6]: https://www.w3.org/TR/css3-box/#abs-non-replaced-width

