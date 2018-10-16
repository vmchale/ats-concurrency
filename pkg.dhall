let prelude = http://hackage.haskell.org/package/ats-pkg/src/dhall/atspkg-prelude.dhall

in λ(x : List Natural) →
  prelude.makePkgDescr { x = x, name = "ats-concurrency", githubUsername = "vmchale", description = "Channel-based concurrency for ATS"  }
    ⫽ { libName = "concurrency" }
