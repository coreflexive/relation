fun ker(r: univ->univ) : univ->univ {
  r.~r
}

fun img(r: univ->univ) : univ->univ {
  ~r.r
}