let prelude = http://hackage.haskell.org/package/ats-pkg/src/dhall/atspkg-prelude.dhall
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
  }
