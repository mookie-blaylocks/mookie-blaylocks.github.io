#lang racket/base
(require pollen/decode pollen/misc/tutorial txexpr)
(provide (all-defined-out))

(define (link url text)
  `(a ((href ,url)) ,text))
