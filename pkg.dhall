let dep = https://raw.githubusercontent.com/vmchale/atspkg/master/pkgs/default-pkg.dhall

in dep //
  { libName = "concurrency"
  , dir = ".atspkg/contrib"
  , url = "https://github.com/vmchale/ats-concurrency/archive/0.1.2.tar.gz"
  , libVersion = [0,1,2]
  }
