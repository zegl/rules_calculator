load("//math:bc.bzl", "bc_impl")

def _mul_impl(ctx):
    return bc_impl(ctx, "*", "mul")

mul = rule(
    implementation = _mul_impl,
    doc = """
Calculates the product of the factors.

Example:

```python
# Calculates 3 * 4 * 2, with the output 24
mul(
    name = "three_plus_four_plus_two",
    terms = [
        ":three",
        ":four",
        ":two",
    ],
)
```
""",
    attrs = {
        "terms": attr.label_list(mandatory = True, doc = "The factors to multiply with each other"),
    },
)
