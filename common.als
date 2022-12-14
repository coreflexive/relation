fun ker(r: univ->univ) : univ->univ { r.~r }

fun img(r: univ->univ) : univ->univ { ~r.r }

fun dom(r: univ->univ) : univ->univ { iden & ker[r] }

fun rng(r: univ->univ) : univ->univ { iden & img[r] }

pred entire(src,tgt: set univ, r: src->tgt) {
  iden:>src in ker[r]
}

pred simple(src,tgt: univ, r: src->tgt) {
  img[r] in iden:>tgt
}

pred surjective(src,tgt: univ, r: src->tgt) {
  iden:>tgt in img[r]
}

pred injective(src,tgt: univ, r: src->tgt) {
  ker[r] in iden:>src
}


pred representation(src,tgt: set univ, r: src->tgt) {
  injective[src,tgt,r]
  entire[src,tgt,r]
}

pred function(src,tgt: set univ, r: src->tgt) {
  entire[src,tgt,r]
  simple[src,tgt,r]
}

pred abstraction(src,tgt: set univ, r: src->tgt) {
  simple[src,tgt,r]
  surjective[src,tgt,r]
}


pred injection(src,tgt: set univ, r: src->tgt) {
  representation[src,tgt,r]
  function[src,tgt,r]
}

pred surjection(src,tgt: set univ, r: src->tgt) {
  function[src,tgt,r]
  abstraction[src,tgt,r]
}


pred bijection(src,tgt: set univ, r: src->tgt) {
  injection[src,tgt,r]
  surjection[src,tgt,r]
}


pred separated(a,b,c: set univ, r: a->c, s: b->c) {
  no r.~s
}

pred coseparated(a,b,c: set univ, r: a->c, s: b->c) {
  no ~r.s
}
