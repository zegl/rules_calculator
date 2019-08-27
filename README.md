# rules_calculator

A toy project for learning about Bazel rules, and will be used as the base for a talk at the [bazel build //stockholm/...](https://www.meetup.com/BazelSTHLM) meetup group.

## Documentation

<!-- Generated with Stardoc: http://skydoc.bazel.build -->

<a name="#add"></a>

## add

<pre>
add(<a href="#add-name">name</a>, <a href="#add-terms">terms</a>)
</pre>


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


### Attributes

<table class="params-table">
  <colgroup>
    <col class="col-param" />
    <col class="col-description" />
  </colgroup>
  <tbody>
    <tr id="add-name">
      <td><code>name</code></td>
      <td>
        <a href="https://bazel.build/docs/build-ref.html#name">Name</a>; required
        <p>
          A unique name for this target.
        </p>
      </td>
    </tr>
    <tr id="add-terms">
      <td><code>terms</code></td>
      <td>
        <a href="https://bazel.build/docs/build-ref.html#labels">List of labels</a>; required
        <p>
          The numbers to add
        </p>
      </td>
    </tr>
  </tbody>
</table>


<!-- Generated with Stardoc: http://skydoc.bazel.build -->

<a name="#display"></a>

## display

<pre>
display(<a href="#display-name">name</a>, <a href="#display-value">value</a>)
</pre>



### Attributes

<table class="params-table">
  <colgroup>
    <col class="col-param" />
    <col class="col-description" />
  </colgroup>
  <tbody>
    <tr id="display-name">
      <td><code>name</code></td>
      <td>
        <a href="https://bazel.build/docs/build-ref.html#name">Name</a>; required
        <p>
          A unique name for this target.
        </p>
      </td>
    </tr>
    <tr id="display-value">
      <td><code>value</code></td>
      <td>
        <a href="https://bazel.build/docs/build-ref.html#labels">Label</a>; required
        <p>
          The numbers to print when running this target
        </p>
      </td>
    </tr>
  </tbody>
</table>


<!-- Generated with Stardoc: http://skydoc.bazel.build -->

<a name="#div"></a>

## div

<pre>
div(<a href="#div-name">name</a>, <a href="#div-dividend">dividend</a>, <a href="#div-divisor">divisor</a>)
</pre>


Divides the `dividend` with the `divisor`, and outputs the `qoutient`.

Example:

```python
# Calculates 20 / 5 to return 4
add(
    name = "tewnty_div_five",
    dividend = ":twenty",
    divisor = ":four",
)
```


### Attributes

<table class="params-table">
  <colgroup>
    <col class="col-param" />
    <col class="col-description" />
  </colgroup>
  <tbody>
    <tr id="div-name">
      <td><code>name</code></td>
      <td>
        <a href="https://bazel.build/docs/build-ref.html#name">Name</a>; required
        <p>
          A unique name for this target.
        </p>
      </td>
    </tr>
    <tr id="div-dividend">
      <td><code>dividend</code></td>
      <td>
        <a href="https://bazel.build/docs/build-ref.html#labels">Label</a>; required
      </td>
    </tr>
    <tr id="div-divisor">
      <td><code>divisor</code></td>
      <td>
        <a href="https://bazel.build/docs/build-ref.html#labels">Label</a>; required
      </td>
    </tr>
  </tbody>
</table>


<!-- Generated with Stardoc: http://skydoc.bazel.build -->

<a name="#fib"></a>

## fib

<pre>
fib(<a href="#fib-name">name</a>, <a href="#fib-n">n</a>)
</pre>



### Parameters

<table class="params-table">
  <colgroup>
    <col class="col-param" />
    <col class="col-description" />
  </colgroup>
  <tbody>
    <tr id="fib-name">
      <td><code>name</code></td>
      <td>
        required.
      </td>
    </tr>
    <tr id="fib-n">
      <td><code>n</code></td>
      <td>
        required.
      </td>
    </tr>
  </tbody>
</table>


<!-- Generated with Stardoc: http://skydoc.bazel.build -->

<a name="#mul"></a>

## mul

<pre>
mul(<a href="#mul-name">name</a>, <a href="#mul-terms">terms</a>)
</pre>


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


### Attributes

<table class="params-table">
  <colgroup>
    <col class="col-param" />
    <col class="col-description" />
  </colgroup>
  <tbody>
    <tr id="mul-name">
      <td><code>name</code></td>
      <td>
        <a href="https://bazel.build/docs/build-ref.html#name">Name</a>; required
        <p>
          A unique name for this target.
        </p>
      </td>
    </tr>
    <tr id="mul-terms">
      <td><code>terms</code></td>
      <td>
        <a href="https://bazel.build/docs/build-ref.html#labels">List of labels</a>; required
        <p>
          The factors to multiply with each other
        </p>
      </td>
    </tr>
  </tbody>
</table>


<!-- Generated with Stardoc: http://skydoc.bazel.build -->

<a name="#number"></a>

## number

<pre>
number(<a href="#number-name">name</a>, <a href="#number-number">number</a>)
</pre>


Defines a single static number.

Example:

```python
number(
    name = "five",
    number = 5,
)
```


### Attributes

<table class="params-table">
  <colgroup>
    <col class="col-param" />
    <col class="col-description" />
  </colgroup>
  <tbody>
    <tr id="number-name">
      <td><code>name</code></td>
      <td>
        <a href="https://bazel.build/docs/build-ref.html#name">Name</a>; required
        <p>
          A unique name for this target.
        </p>
      </td>
    </tr>
    <tr id="number-number">
      <td><code>number</code></td>
      <td>
        Integer; required
        <p>
          The integer to write to the output
        </p>
      </td>
    </tr>
  </tbody>
</table>


<!-- Generated with Stardoc: http://skydoc.bazel.build -->

<a name="#sub"></a>

## sub

<pre>
sub(<a href="#sub-name">name</a>, <a href="#sub-subtract">subtract</a>, <a href="#sub-value">value</a>)
</pre>


Calculates the difference between two terms.

Example:

```python
# Calculates 20 - 5 to return 15
sub(
    name = "twenty_minus_five",
    terms = []
    value = ":twenty",
    subtract = ":five",
)
```


### Attributes

<table class="params-table">
  <colgroup>
    <col class="col-param" />
    <col class="col-description" />
  </colgroup>
  <tbody>
    <tr id="sub-name">
      <td><code>name</code></td>
      <td>
        <a href="https://bazel.build/docs/build-ref.html#name">Name</a>; required
        <p>
          A unique name for this target.
        </p>
      </td>
    </tr>
    <tr id="sub-subtract">
      <td><code>subtract</code></td>
      <td>
        <a href="https://bazel.build/docs/build-ref.html#labels">Label</a>; required
      </td>
    </tr>
    <tr id="sub-value">
      <td><code>value</code></td>
      <td>
        <a href="https://bazel.build/docs/build-ref.html#labels">Label</a>; required
      </td>
    </tr>
  </tbody>
</table>
