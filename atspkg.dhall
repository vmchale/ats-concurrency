let pkg = https://raw.githubusercontent.com/vmchale/atspkg/master/pkgs/default.dhall
in
let dbin = https://raw.githubusercontent.com/vmchale/atspkg/master/pkgs/default-bin.dhall

in pkg //
  { bin =
    [
      dbin //
      { src = "concurrency.dats"
      , target = "target/libchannel.a"
      , libs = [ "pthread" ]
      }
    ]
  }
