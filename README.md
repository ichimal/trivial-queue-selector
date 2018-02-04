trivial-queue-selector
====

Just a wrapper I/F set of some queue implementations

## Package name and its nicknames:

### *[package name]*

`queue-selector`

### *[package nicknames]*

`qslct`

## Supported queue implementations

* `:safe-queue` (http://quickdocs.org/safe-queue/)
* `:cl-speedy-queue` (http://quickdocs.org/cl-speedy-queue/)

## APIs

### *[Parameter]*``*queue-selector-supported-implementations*`

a list of supported queue implementation pacakge names as keyword.

### *[Function]* `load-queue-implementation`
#### Syntax:
`LOAD-QUEUE-IMPLEMENTATION` package-name-as-keyword

A package-name-as-keyword must be matched a entry in the `*queue-selector-supported-implementations*`; you cannot use any nickname of package.

e.g.

```common-lisp
> (load-queue-implementation :safe-queue)
```

The first time loading of a queue implementation, `load-queue-implementation` will pushes given keyword into `*features*` and will return `t`.

### *[Generic Function]* `make-queue-of`
#### Syntax:
`MAKE-QUEUE-OF` package-name-as-keyword *&rest* parameters

This function must be supported for all of supported queue implementations.

### *[Generic Function]* `enque`
#### Syntax:
`ENQUE` queue object

This function must be supported for all of supported queue implementations.

### *[Generic Function]* `deque`
#### Syntax:
`DEQUE` queue

This function must be supported for all of supported queue implementations.

### *[Generic Function]* queue-empty-p
#### Syntax:
`QUEUE-EMPTY-P` queue

This function must be supported for all of supported queue implementations.

### *[Generic Function]* queue-full-p
#### Syntax:
`QUEUE-FULL-P` queue

This function is optional.

### *[Generic Function]* queue-length
#### Syntax:
`QUEUE-LENGTH` queue

This function is optional.

## Author:

SUZUKI Shingo (r2.ichimal@gmail.com)

## Copyright:

Copyright (C) 2018 SUZUKI Shingo (r2.ichimal@gmail.com)

## License:
Under MIT license.

