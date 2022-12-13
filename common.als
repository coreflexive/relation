open combinators

pred entire(src,tgt: univ, r: src->tgt) {
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