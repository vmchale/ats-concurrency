staload "libats/SATS/athread.sats"
staload "libats/SATS/funarray.sats"
staload "libats/SATS/deqarray.sats"
staload _ = "libats/DATS/deqarray.dats"

absvtype queue_vtype(a: vt@ype+, int) = ptr

vtypedef queue(a: vt0p, id: int) = queue_vtype(a, id)
vtypedef queue(a: vt0p) = [id:int] queue(a, id)

absprop ISNIL (id : int, b : bool)

fun {a:vt0p} queue_is_nil {id:int} (!queue(a, id)) : [b:bool] (ISNIL(id, b) | bool(b))

absprop ISFULL (id : int, b : bool)

fun {a:vt0p} queue_is_full {id:int} (!queue(a, id)) : [b:bool] (ISFULL(id, b) | bool(b))

fun {a:vt0p} queue_insert {id:int} ( ISFULL(id,false) | xs : !queue(a, id) >> queue(a, id2)
                                   , x : a
                                   ) : #[id2:int] void

fun {a:vt0p} queue_remove {id:int} (ISNIL(id,false) | xs : !queue(a, id) >> queue(a, id2)) :
  #[id2:int] a

fun {a:vt0p} queue_make (cap : intGt(0)) : queue(a)

fun {a:t@ype} queue_free (que : queue(a)) : void

absvtype channel_vtype(a: vt@ype+) = ptr

vtypedef channel(a: vt0p) = channel_vtype(a)

fun {a:vt0p} channel_insert (!channel(a), a) : void

fun {a:vt0p} channel_remove (chan : !channel(a)) : a

fun {a:vt0p} channel_remove_helper (chan : !channel(a), !queue(a) >> _) : a

fun {a:vt0p} channel_insert_helper (!channel(a), !queue(a) >> _, a) : void

datavtype channel_ =
  | { l0, l1, l2, l3 : agz } CHANNEL of @{ cap = intGt(0)
                                         , spin = spin_vt(l0)
                                         , refcount = intGt(0)
                                         , mutex = mutex_vt(l1)
                                         , CVisNil = condvar_vt(l2)
                                         , CVisFull = condvar_vt(l3)
                                         , queue = ptr
                                         }

fun {a:vt0p} channel_make (cap : intGt(0)) : channel(a)

fun {a:vt0p} channel_ref (ch : !channel(a)) : channel(a)

fun {a:vt0p} channel_unref (ch : channel(a)) : Option_vt(queue(a))

fun channel_refcount {a:vt0p} (ch : !channel(a)) : intGt(0)