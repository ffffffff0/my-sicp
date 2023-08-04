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

(define (average a b)
  (/ (+ a b) 2))

(define (average-damp f)
  (lambda (x) (average x (f x))))

(define (square x)
  (* x x))

(define (fast-expt b n)
  (cond ((= n 0) 1)
        ((even? n) (square (fast-expt b (/ n 2))))
        (else (* b (fast-expt b (- n 1))))))

(define (compose f g)
  (lambda (x)
    (g (f x))))

(define (repeated f n)
  (if (> n 1)
      (compose (repeated f (- n 1)) f)
      f))

;; avarage-damp d times
(define (nth-root x n d)
  (fixed-point ((repeated average-damp d)
                (lambda (y) (/ x (fast-expt y (- n 1)))))
               1.0))

(display (nth-root 2.0 2 2))
(newline)
(display (nth-root 2.0 3 2))
(newline)
(display (nth-root 2.0 4 2))
(newline)
(display (nth-root 2.0 5 2))
(newline)
(display (nth-root 2.0 6 2))
(newline)
(display (nth-root 2.0 7 2))
(newline)
(display (nth-root 2.0 8 2))
(newline)