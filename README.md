# concurrency

This is basically taken from the example in the book, but configured to work
with [atspkg](http://hackage.haskell.org/package/ats-pkg).

## Installation

Add the appropriate Dhall expression to your dependencies:

```dhall
dependencies = [ https://raw.githubusercontent.com/vmchale/atspkg/master/pkgs/atscntrb-concurrency-0.1.0.dhall ]
```

Then include the appropriate file with

```ats
#include ".atspkg/contrib/ats-concurrency-0.1.0/channel.dats"
```
