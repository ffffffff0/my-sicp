#lang sicp

(define (isEven n)
  (= (remainder n 2) 0)
)
(define (squre n)
  (* n n)
)
(define (double n)
  (+ n n)
)
(define (halve n)
  (/ n 2)
)
(define (mul a b)
  (if (= b 0)
      0
      (+ a (mul a (- b 1))))
)

(define (fast-expt b n)
    (cond ((= n 0) 1)
            ((isEven n) (double (fast-expt b (halve n))))
            (else (mul (fast-expt b (- n 1)) b)))
)

(fast-expt 2 3)
