let pkg = https://raw.githubusercontent.com/vmchale/atspkg/master/pkgs/default.dhall
in
let dbin = https://raw.githubusercontent.com/vmchale/atspkg/master/pkgs/default-bin.dhall
in
let dlib = https://raw.githubusercontent.com/vmchale/atspkg/master/pkgs/default-lib.dhall

in pkg //
  { test =
    [
      dbin //
      { src = "test/test.dats"
      , target = "target/test"
      , libs = [ "pthread" ]
      }
    ]
  , libraries =
    [
      dlib //
      { name = "concurrency"
      , src = [ "mylibies_link.hats" ]
      , includes = [ "mylibies_link.hats" ]
      , libTarget = ".atspkg/lib/libconcurrency.a"
      , libs = [ "pthread" ]
      }
    ]
  , compiler = [0,3,10]
  , dependencies = [ "nproc-ats" ]
  }
