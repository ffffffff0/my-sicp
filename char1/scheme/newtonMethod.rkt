#lang sicp

(define (square x)
  (* x x))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (new-good-enough? old-value new-value)
  (> 0.01 (/ (abs (- old-value new-value)) old-value)))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
    guess
    (sqrt-iter (improve guess x) x)))

(define (new-sqrt-iter guess x)
  (if (new-good-enough? guess (improve guess x))
    (improve guess x)
    (new-sqrt-iter (improve guess x) x)))


(define (sqrt x)
  (sqrt-iter 1.0 x))

(define (new-sqrt x)
  (new-sqrt-iter 1.0  x))

; (sqrt 9)
; (new-sqrt 9)

; (sqrt 2)
; (new-sqrt 2)

; (sqrt 1000000)
; (new-sqrt 1000000)

(sqrt 0.0000000009)
(new-sqrt 0.0000000009)
