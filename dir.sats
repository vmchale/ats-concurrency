vtypedef exclude_vt = @{ exclude = string -<cloptr1> bool }
vtypedef step_vt(a: vt@ype) = @{ step = string -<cloptr1> a }
vtypedef pool(a: vt@ype) = List_vt(a)

// Parallel (recursive) directory traversal. Takes as an argument a function to
// exclude certain directories (or files).
fun dirtraverse {a:vt@ype} (init_dir : string, init_val : a, exclude : exclude_vt, step : step_vt(a)) : a