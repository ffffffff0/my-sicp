#lang sicp

(define (cube x)
  (* x x x))

(define (sum term a next b)
  (if (> a b) 0 (+ (term a) (sum term (next a) next b))))

(define (isEven n)
  (= remainder (n 2) 0))

(define (simpson func a b n)
  (define h (/ (- b a) n))

  (define (y k)
    (func (+ a (* k h))))

  (define (factor k)
    (cond
      [(or (= k 0) (= k n)) 1]
      [(isEven k) 2]
      [else 4]))

  (define (term k)
    (* (factor k) (y k)))

  (define (next k)
    (+ k 1))

  (* (/ h 3) (sum term 0 next n)))

(simpson cube 0 1 100)
; (simpson cube 0 1 1000)
