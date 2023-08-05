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


(define (make-rectangles rlength rwidth)
  (cons rlength rwidth))


(define (rectangles-area rec)
  (* (car rec)
     (cdr rec)))

(define (rectangles-perimeter rec)
  (* 2 (+ (car rec)
          (cdr rec))))