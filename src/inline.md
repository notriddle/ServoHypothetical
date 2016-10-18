# Absolute-inline boxes

To compute the static position of a box with
initial values of
`position:absolute` and `display:inline`
(shortened to "absolute-inline box"),
the user agent will perform layout computation on what is
logically a copy of the its containing formatting context.
Boxes in this copy are referred to as "hypothetical boxes,"
while boxes in the original are referred to as "real boxes."

The hypothetical absolute-inline box
shall be statically positioned, inline, and unbreakable.
To compute its used width:

  * If the computed value of the `width` property is set to a value other
    than `auto`, use that.
  * Otherwise, if the properties `left` and `right` are both set,
    compute the horizontal constraints of the real absolute-inline box,
    then use its width.
  * Otherwise, use the [intrinsic] width of the real absolute-inline box.

To compute the hypothetical absolute-inline box's used height:

  * If the computed value of the `height` property is set to a value other
    than `auto`, use that.
  * Otherwise, if the properties `top` and `bottom` are both set,
    compute the vertical constraints of the real absolute-inline box,
    then use its height.
  * Otherwise, use the [intrinsic] height of the real absolute-inline box.

Because the hypothetical absolute-inline box is statically positioned inline,
it is not subject to the absolute constraint equation itself, and, as a result,
the used values for its margins will be the same as the computed values,
and may be different from the real absolute-inline box's margins.
However, the used width and height of the hypothetical absolute-inline box
shall be the same as the used width and height of the real absolute-inline box.

All other hypothetical boxes will be identical to their real equivalents, except
for the effect the presence of the hypothetical absolute-inline box has
on their layout.

The static position of the real absolute-inline box is the absolute position
of the hypothetical absolute-inline box.

> Note: Each absolute-inline box's static position is computed
> using a separate hypothetical formatting context.

[intrinsic]: https://dbaron.org/css/intrinsic/
