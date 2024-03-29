#lang sicp

(define tolerance 0.0000001)

; (define (fixed-point f first-guess)
;   (define (close-enough? v1 v2)
;     (< (abs (- v1 v2)) tolerance))
;   (define (try guess)
;     (display guess)
;     (newline)
;     (let ((next (f guess)))
;       (if (close-enough? guess next)
;           next
;           (try next))))
;   (try first-guess))

(define (average a b)
  (/ (+ a b) 2.0))

(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) tolerance))
  (define (try guess)
    (display guess)
    (newline)
    (let ((next (average guess (f guess))))
      (if (close-enough? guess next)
          next
          (try next))))
  (try first-guess))

; test
; (fixed-point (lambda (x) (/ (log 1000) (log x))) 2.0)
; average damp
(fixed-point (lambda (x) (/ (log 1000) (log x))) 2.0)