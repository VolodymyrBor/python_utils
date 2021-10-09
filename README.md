# PythonUtils

Pythonic useful functions and classes for Dart.

## Features

### itertools
Effective iteration.

* next()
* zip()
* enumerate()


### Pair

`Pair` is a class that provides a way to store two objects as a single unit.


### Range

Numeric Sequence


### strtools

Useful functions for String type

* strIter()
* removeSuffix()
* strJoin()
* toString()

## Getting started

TODO: List prerequisites and provide or point to information on how to
start using the package.

## Usage

### itertools

#### next()

```dart
var it = [1, 2, 3].iterator;
print(next(it));
print(next(it));
print(next(it));
print(next(it));
```

Output:

```
>>> 1
>>> 2
>>> 3
trow StopIteration
```

#### zip()

```dart
var l1 = [1, 2, 3];
var l2 = [-1, -2, -3];
print(zip(l1, l2));
```

Output:

```
>>> [[1, -1], [2, -2], [3, -3]]
```

TODO: added more usage