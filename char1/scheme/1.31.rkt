#lang sicp

; product function recu
(define (product term a next b)
  (if (> a b)
      1
      (* (term a) (product term (next a) next b))))

; product function item
; (define (product term a next b)
;   (define (iter-item a result)
;     (if (> a b) result (iter-item (next a) (* (term a) result))))
;   (iter-item a 1))

; gen numberator
(define (number-item i)
  (cond
    [(= i 1) 2]
    [(even? i) (+ i 2)]
    [else (+ i 1)]))

; gen denominator
(define (deno-item i)
  (if (odd? i)
      (+ i 2)
      (+ i 1)))

; recu
(define (pi n)
  (* 4
     (exact->inexact
      (/ (product number-item
                  1
                  (lambda (i) (+ i 1))
                  n)
         (product deno-item
                  1
                  (lambda (i) (+ i 1))
                  n)))))

; iter
(pi 10)
(pi 100)
(pi 1000)
(pi 10000)
