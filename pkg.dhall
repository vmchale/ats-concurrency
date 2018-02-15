let makePkg = https://raw.githubusercontent.com/vmchale/atspkg/master/pkgs/make-pkg.dhall

in λ(x : List Integer) → 
  makePkg { x = x, name = "concurrency", githubUsername = "vmchale" } // { libDeps = "nproc-ats" }
