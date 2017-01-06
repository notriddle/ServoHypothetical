# Absolute-block boxes

To compute the static position of a box with
a computed value of `position:absolute` and
position-agnostic computed value of `display:block`
(shortened to "absolute-block box"),
the user agent will perform layout computation on what is
logically a copy of the its containing formatting context.
Boxes in this copy are referred to as "hypothetical boxes,"
while boxes in the original are referred to as "real boxes."

The hypothetical absolute-block box
shall be its own statically positioned block formatting context.
To compute its used width:

  * If the computed value of the `width` property is set to a value other
    than `auto`, use that.
  * Otherwise, if the properties `left` and `right` are both set,
    compute the horizontal constraints of the real absolute-inline box,
    then use its width.
  * Otherwise, use the [intrinsic] width of the real absolute-inline box.

To compute the hypothetical absolute-block box's used height:

  * If the computed value of the `height` property is set to a value other
    than `auto`, use that.
  * Otherwise, if the properties `top` and `bottom` are both set,
    compute the vertical constraints of the real absolute-block box,
    then use its height.
  * Otherwise, use the [intrinsic] height of the real absolute-block box.

The hypothetical absolute-inline box shall not have any margins,
even if margins are specified.
The real absolute-inline box may have margins,
subject to the absolute constraint equation.

All other hypothetical boxes will be identical to their real equivalents, except
for the effect the presence of the hypothetical absolute-block box has
on their layout.

The static position of the real absolute-block box is the absolute position
of the hypothetical absolute-block box.

> Note: Each absolute-block box's static position is computed
> using a separate hypothetical formatting context.

[intrinsic]: https://dbaron.org/css/intrinsic/
