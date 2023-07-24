#lang sicp

(define (isEven n)
  (= remainder(n 2) 0)
)
; product function  recu
(define (product term a next b)
  (if (> a b)
      1
      (* (term a) (product term (next a) next b))
  )
)

; product function item
(define (product term a next b)
  (define (iter a result)
    (if (> a b)
      result
      (item (+ a 1) (* (term a) result))))
  (iter a 1)
)

; gen numberator
(define (number-item i)
  (cond ((= i 1) 2)
        ((isEven i) (+ i 2))
        (else (+ i 1))
  )
)

; gen denominator
(define (deno-item i)
  (if (isEven i)
      (+ i 1)
      (+ i 2)
  )
)

; recu
(define (pi n)
  (* 4 (exact->inexact(/ (product number-item 1 (lambda (i) (+ i 1)) n)
          (product deno-item 1 (lambda (i) (+ i 1)) n))
       )
  )
)

; iter

(pi 10)
(pi 100)
(pi 1000)
(pi 10000)
