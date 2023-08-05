#lang sicp

(define (x-point x)
  (car x))

(define (y-point x)
  (cdr x))

(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))

(define (make-point x y)
  (cons x y))

(define start-segment (make-point 1 2))
(define end-segment (make-point -1 7))

(define (mid-segment start end)
  (cons (/ (+ (car start)
              (car end))
           2.0)
        (/ (+ (cdr start)
              (cdr end))
           2.0)))

(print-point (mid-segment start-segment end-segment))