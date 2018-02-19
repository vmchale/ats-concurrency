let prelude = https://raw.githubusercontent.com/vmchale/atspkg/master/dhall/atspkg-prelude.dhall

in λ(x : List Integer) → 
  prelude.makePkg { x = x, name = "ats-concurrency", githubUsername = "vmchale" } 
    // { libName = "concurrency", libDeps = prelude.mapPlainDeps [ "nproc-ats" ]
       , description = [ "Channel-based concurrency for ATS" ] : Optional Text 
       }
