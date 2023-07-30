#lang sicp

(define tolerance 0.00001)

(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) tolerance))
  (define (try guess)
    (let ((next (f guess)))
      (if (close-enough? guess next)
          next
          (try next))))
  (try first-guess))

; test
(fixed-point cos 1.0)
(fixed-point (lambda (y) (+ (sin y) (cos y))) 1.0)

; sqrt fixed point
(define (sqrt x)
  (fixed-point (lambda (y)
                 ((lambda (a b) (/ (+ a b) 2.0)) y (/ x y)))
               1.0))

; test sqrt
(sqrt 2)
(sqrt 4)