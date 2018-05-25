let prelude = https://raw.githubusercontent.com/vmchale/atspkg/master/ats-pkg/dhall/atspkg-prelude.dhall

in λ(x : List Natural) →
  prelude.makePkgDescr { x = x, name = "ats-concurrency", githubUsername = "vmchale", description = "Channel-based concurrency for ATS"  }
    ⫽ { libName = "concurrency" }
