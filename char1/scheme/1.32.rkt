#lang sicp

; recursive
; (define (accumulate combiner null-value term a next b)
;   (if (> a b)
;       null-value
;       (combiner (term a)
;                 (accumulate combiner
;                             null-value
;                             term
;                             (next a)
;                             next
;                             b))))

; iterative
(define (accumulate combiner null-value term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (combiner result (term a)))))
  (iter a null-value))

; prduct
(define (product term a next b)
  (accumulate * 1 term a next b))

; sum
(define (sum term a next b)
  (accumulate + 0 term a next b))

; test
(sum (lambda (x) x) 1 (lambda (i) (+ i 1)) 100)
(product (lambda (x) x) 1 (lambda (i) (+ i 1)) 100)