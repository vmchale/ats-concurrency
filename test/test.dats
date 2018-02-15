#include "mylibies.hats"

implement main0 () =
  {
    val _ = println!(nproc_glibc())
    val _ = println!(nproc_x86_64())
  }