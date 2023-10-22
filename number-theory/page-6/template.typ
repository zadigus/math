#import "@preview/ctheorems:1.0.0": *
#show: thmrules

// The project function defines how your document looks.
// It takes your content and some metadata and formats it.
// Go ahead and customize it to your liking!
#let project(title: "", authors: (), body) = {
  // Set the document's basic properties.
  set document(author: authors, title: title)
  set text(font: "Linux Libertine", lang: "en")
  set par(justify: true)
  
  body
}

#let lemma = thmbox(
  "theorem", 
  "Lemma", 
  fill: rgb("#eeffee")
).with(numbering: none)

#let proof = thmplain(
  "proof",
  "Proof",
  base: "lemma",
  bodyfmt: body => [#body #h(1fr) $square$]
).with(numbering: none)
