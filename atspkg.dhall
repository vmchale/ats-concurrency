let prelude = https://raw.githubusercontent.com/vmchale/atspkg/master/dhall/atspkg-prelude.dhall

in prelude.default //
  { test =
    [
      prelude.bin //
      { src = "test/test.dats"
      , target = "target/test"
      , libs = [ "pthread" ]
      }
    ]
  , libraries =
    [
      prelude.lib //
      { name = "concurrency"
      , src = [] : List Text
      , includes = [] : List Text
      -- , src = [ "mylibies_link.hats" ]
      -- , includes = [ "mylibies_link.hats" ]
      , libTarget = ".atspkg/lib/libconcurrency.a"
      , libs = [ "pthread" ]
      }
    ]
  , compiler = [0,3,10]
  , dependencies = prelude.mapPlainDeps [ "nproc-ats" ]
  }
