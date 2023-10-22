#import "template.typ": *
#show: project.with(
  title: "test",
  authors: (
    "zadigus",
  ),
)

#lemma[
  $o(1) eq O(1)$
]
#proof[
  On the one hand,
  $
    o(1) <=> f -> 0,
  $
  on the other hand,
  $
    O(1) <=> abs(f) lt A.
  $
  Now, if $f->0$, then $abs(f) lt A$, whence
  $
    o(1) eq O(1).
  $
]

#lemma[
  $O(1) eq.not o(1)$
]
#proof[
  $
    O(1) eq.not o(1) <=> abs(f) lt A arrow.r.double.not f arrow 0
  $
  That's indeed the case if $f = B < A$.
]

#lemma[
  $O(1) eq o(x)$
]
#proof[
  That means 
  $
    abs(f) < A arrow.r.double f/x arrow.r 0
  $
  which is trivially true.
]

#pagebreak()

#lemma[
  $
    f tilde phi arrow.r.l.double f = phi (1 + o(1))
  $
]
#proof[
  $
    f tilde phi &arrow.r.l.double f/phi arrow 1 arrow.r.l.double f/phi - 1 arrow.r 0 arrow.r.l.double (f-phi)/phi arrow.r 0 arrow.r.l.double^"defn" f - phi = o(phi) arrow.r.l.double f = phi + o(phi) arrow.r.l.double f - phi = phi o(1) 
  $
  because
  $
    g = o(phi) arrow.r.l.double g / phi arrow.r 0 arrow.r.l.double g / phi = o(1) arrow.r.l.double g = phi o(1)
  $
]
