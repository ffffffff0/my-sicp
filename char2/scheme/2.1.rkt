#lang sicp

(define (gcd a b)
  (if (= b 0)
      a
      (gcd b (remainder a b))))

(define (numer x)
  (car x))

(define (denom x)
  (cdr x))

(define (print-rat x)
  (newline)
  (display (numer x))
  (display "/")
  (display (denom x)))

;; polish make-rat
(define (make-rat x y)
  (let ((g (gcd x y)))
    (cond ((< y 0)
           (- x)
           (- y)))
    (cons (/ x g) (/ y g))))


;; test case
(print-rat (make-rat 4 6))
(print-rat (make-rat 4 -6))
(print-rat (make-rat -4 -6))
(print-rat (make-rat -4 6))

