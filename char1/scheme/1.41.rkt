#lang sicp

(define (double proce)
  (lambda (x) (proce (proce x))))

; test
((double inc) 1)

(((double (double double)) inc) 5)