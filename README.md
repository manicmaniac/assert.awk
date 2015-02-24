# assert.awk

---

## Introduction

An assertion library for awk.

### Usage

1. First, download this library.

    git clone https://github.com/manicmaniac/assert.awk

2. Second, write your assertions.

3. Execute awk with arguments below.

    awk [-v BLOCK_ASSERTIONS] -f assert.awk (-f <program> | '<command>') <source>

Note: If you use `gawk >= 4.0` or `igawk`, `@include "assert.awk"` may be useful.

## API

### Functions

#### `assert_equals(actual, expected, [message])`

Assert `actual` equals `expected`.

If an assertion failed, `message` will be dislayed and exit with status code `1`.

#### `assert_true(actual, [message])`

Assert `actual` is "truthy".

Note: If an expression is evaluated as true, it's "truthy".

If an assertion failed, `message` will be dislayed and exit with status code `1`.

#### `assert_true(actual, [message])`

Assert `actual` is "falsy".

Note: If an expression is evaluated as false, it's "falsy".

If an assertion failed, `message` will be dislayed and exit with status code `1`.

#### `assert_fail([message])`

Display `message` and exit with status code `1`.

### Variables

#### `BLOCK_ASSERTIONS`

If awk passed the argument `-v BLOCK_ASSERTIONS=1`, any assertions will not be evaluated.

### Version

Now 0.1.0.

### License

This program is licensed under the [MIT License](http://opensource.org/licenses/MIT).

See [LICENSE.txt](LICENSE.txt) for more information.

