load("//math:bc.bzl", "bc_impl")

def _add_impl(ctx):
    return bc_impl(ctx, "+", "add")

add = rule(
    implementation = _add_impl,
    doc = """
Calculates the sum (addition) of the provided numbers.

Example:

```python
# Calculates 3 + 4 + 2, with the output 9
add(
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
        "terms": attr.label_list(mandatory = True, doc = "The numbers to add"),
    },
)
