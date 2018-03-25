let prelude = https://raw.githubusercontent.com/vmchale/atspkg/master/ats-pkg/dhall/atspkg-prelude.dhall
in
let lib =
  prelude.staticLib ⫽ 
  { name = "concurrency"
  , src = [ "mylibies_link.hats" ]
  , libs = [ "pthread" ]
  }

in prelude.default ⫽ 
  { test =
    [
      prelude.bin ⫽ 
      { src = "test/test.dats"
      , target = "target/test"
      , libs = [ "pthread" ]
      }
    ]
  , libraries =
    [
      lib ⫽ 
      { libTarget = "target/libconccurency.a"
      , includes = [ "mylibies_link.hats", ".atspkg/contrib/channel_link.hats" ]
      , links = [ { _1 = "channel.sats", _2 = ".atspkg/contrib/channel_link.hats" } ]
      }
    ]
  , dependencies = prelude.mapPlainDeps [ "nproc-ats" ]
  , compiler = [0,3,10]
  }
