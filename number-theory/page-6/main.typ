#import "template.typ": *
#show: project.with(
  title: "test",
  authors: (
    "zadigus",
  ),
)

#lemma[
  $p$ prime $=> 3 divides p+2 or 3 divides p+4$
]
#proof[
  Consider the triple $(n, n+1, n+2) forall n in NN^*$. Then, necessarily, 
  $
    3 divides n or 3 divides n+1 or 3 divides n+2.
  $
  Consequently, if $p$ is prime, then $3 divides.not p$, and
  $
    3 divides p+1 or 3 divides p+2,
  $
  which is equivalent to
  $
    3 divides p+4 or 3 divides p+2.
  $
]
