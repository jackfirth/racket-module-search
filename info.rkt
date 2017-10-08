#lang info

(define name "module-search")
(define collection "module-search")

(define deps
  '("base"))

(define build-deps
  '("racket-doc"
    "scribble-lib"))

(define scribblings
  '(("scribblings/main.scrbl" () (library) "module-search")))
