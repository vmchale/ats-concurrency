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
      , src = [ "mylibies_link.hats" ]
      , includes = [ "mylibies_link.hats", ".atspkg/contrib/channel_link.hats" ]
      , links = [ { _1 = "channel.sats", _2 = ".atspkg/contrib/channel_link.hats" } ]
      , libTarget = ".atspkg/lib/libconcurrency.a"
      , libs = [ "pthread" ]
      , static = True
      }
    ]
  , dependencies = prelude.mapPlainDeps [ "nproc-ats" ]
  }
