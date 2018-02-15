# concurrency

This is basically taken from the example in the book, but configured to work
with [atspkg](http://hackage.haskell.org/package/ats-pkg). You can see
[here](http://ats-lang.sourceforge.net/DOCUMENT/INT2PROGINATS/HTML/x4387.html)
for details on how the ATS works.

## Installation

Add the appropriate library to your dependencies:

```dhall
dependencies = [ "concurrency" ]
```

Then include the appropriate file with

```ats
#include "$PATSHOMELOCS/ats-concurrency-0.3.1/mylibies.dats"
```
