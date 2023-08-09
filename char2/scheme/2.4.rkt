#lang sicp

(define (gcons x y)
  (lambda (m) (m x y)))

(define (gcar z)
  (z (lambda (p q) p)))

(define (gcdr z)
  (z (lambda (p q) q)))

; test
(gcar (gcons 2 5))
(gcdr (gcons 5 9))