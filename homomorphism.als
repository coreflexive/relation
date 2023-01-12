open common

pred homomorphism( -- Definition 5.44 in Relational Mathematics (Schmidt)
  X1,Y1: set univ,R1: X1->Y1,
  X2,Y2: set univ,R2: X2->Y2,
  Phi: X1->X2,
  Psi: Y1->Y2
) {
  function[X1,X2,Phi]
  function[Y1,Y2,Psi]

  R1.Psi in Phi.R2
}
