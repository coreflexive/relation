fun Over(a,b,c: set univ, r: b->c, s: b->a) : a->c {
  { x: a, z: c | s.x in r.z }
}

fun Under(a,b,c: set univ, r: a->b, s: c->b) : c->a {
  { z: c, x: a | x.r in z.s }
}

fun SymDiv(a,b,c: set univ, den: b->a, num: c->a) : c->b {
  { z: c, y: b | y.den = z.num }
}