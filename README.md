# concurrency

This is basically taken from the example in the book, but configured to work
with [atspkg](http://hackage.haskell.org/package/ats-pkg). You can see
[here](http://ats-lang.sourceforge.net/DOCUMENT/INT2PROGINATS/HTML/x4387.html)
for details on how the ATS works.

At the moment, this library just provides support for channels.

## Installation

Add the appropriate library to your dependencies:

```dhall
let prelude = http://hackage.haskell.org/package/ats-pkg/src/dhall/atspkg-prelude.dhall
in

dependencies = prelude.mapPlainDeps [ "concurrency" ]
in

...
```

Then include the appropriate file with

```ats
#include "$PATSHOMELOCS/ats-concurrency-0.3.7/mylibies.dats"
```
