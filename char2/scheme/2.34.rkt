#lang sicp

(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))

#|
    1 + 3x + 0x^2 + 5x^3 + 0x^4 + x^5
    1 + x * ( 3 + x * ( 0 + x * ( 5 + x * (0 + x * ( 1 + x )))))
|#

(define (horner-eval x coefficient-sequence)
  (accumulate (lambda (this-coeff higher-term)
                (+ this-coeff (* x higher-term)))
              0
              coefficient-sequence))

(horner-eval 2 (list 1 3 0 5 0 1))