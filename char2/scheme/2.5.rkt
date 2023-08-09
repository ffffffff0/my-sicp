#lang sicp

;; recusive
; (define (expt base number)
;   (if (= number 0)
;       1
;       (* base (expt base (- number 1)))))
;; iterative
(define (expt base number)
  (define (iter a result)
    (if (= a 0)
        result
        (iter (- a 1) (* base result))))
  (iter number 1))

;; test expt
; (expt 2 5)

(define (gcons x y)
  (* (expt 2 x)
     (expt 3 y)))

(define (factor-times number factor result)
  (if (= (remainder number factor) 0)
      (factor-times (/ number factor) factor (+ result 1))
      result))

(define (gcar n)
  (factor-times n 2 0))

(define (gcdr n)
  (factor-times n 3 0))

(define test-number (gcons 2 3))
(gcar test-number)
(gcdr test-number)
