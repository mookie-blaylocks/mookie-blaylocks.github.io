#lang racket/base
(require pollen/decode pollen/misc/tutorial txexpr)
(provide root link)
(define (root . elements)
  (txexpr 'root empty (decode-elements elements
     #:txexpr-elements-proc decode-paragraphs
     #:string-proc (compose1 smart-quotes smart-dashes))))
(define (link url text)
  `(a ((href ,url)) ,text))
