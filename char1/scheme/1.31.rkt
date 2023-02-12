#lang sicp

; product function 
(define (product term a next b)
  (if (> a b)
      1
      (* (term a)
         (product term (next a) next b))))

(product (lambda (x) x)
         1
         (lambda (i) (+ i 1))
         10)
