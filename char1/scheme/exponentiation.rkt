#lang sicp
; recursion
(define (expt b n)
  (if (= n 0)
      1
      (* b (expt b (- n 1))))
)

(expt 2 3)
; iteration
(define (expt-iter-out b n)
  (define (expt-iter b count product)
    (if (= count 0)
        product
        (expt-iter b (- count 1) (* b product)))
  )
  (expt-iter b n 1)
)

(expt-iter-out 2 3)
; fast expt
(define (isEven n)
  (= (remainder n 2) 0)
)
(define (squre b)
  (* b b)
)
(define (fast-expt b n)
  (cond ((= n 0) 1)
        ((isEven n) (squre (fast-expt b (/ n 2))))
        (else (* b (fast-expt b (- n 1)))))
)

(fast-expt 2 3)
; fast expt iteration
(define (fast-expt-iter b n product)
  (cond ((= n 1) product)
        ((isEven n) (fast-expt-iter b (/ n 2) (* product (squre b))))
        (else (fast-expt-iter b (- n 1) (* product b))))
)

(fast-expt-iter 2 3 1)