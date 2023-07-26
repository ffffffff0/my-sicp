#lang sicp

; recursive 1.0
; (define (filter-accumulate combiner null-value term a next b filter)
;   (if (> a b)
;       null-value
;       (if (filter a)
;           (combiner (term a) (filter-accumulate combiner null-value term a next b filter))
;           (combiner null-value (filter-accumulate combiner null-value term a next b filter)))))
; recursive 2.0
; (define (filter-accumulate combiner null-value term a next b filter)
;   (if (> a b)
;       null-value
;       (combiner (if (filter a)
;                     (term a)
;                     null-value)
;                 (filter-accumulate combiner null-value term a next b filter))))

; iterative 1.0
; (define (filter-accumulate combiner null-value term a next b filter)
;   (define (iter a result)
;     result
;     (if (> a b)
;         result
;         (if (filter a)
;             (iter (next a) (combiner result (term a)))
;             (iter a result))))
;   (iter a null-value))

; iterative 2.0
(define (filter-accumulate combiner null-value term a next b filter)
  (define (iter a result)
    result
    (cond [(> a b) result]
          [(filter a) (iter (next a) (combiner result (term a)))]
          [else (iter a result)]))
  (iter a null-value))

(define (primer? x)
  (define (next test-divisor)
    (if (= test-divisor 2)
        3
        (+ test-divisor 2)))
  (define (find-divisor n test-divisor)
    (cond ((> (* test-divisor test-divisor) n) n)
          (((lambda (a b) (= (remainder b a) 0)) test-divisor n) test-divisor)
          (else (find-divisor n (next test-divisor)))))
  (= x (find-divisor x 2)))

; sum square primer
(define (sum-square-primer a b)
  (filter-accumulate +
                     0
                     (lambda (x) (* x x))
                     a
                     (lambda (x) (+ x 1))
                     b
                     primer?))

(sum-square-primer 2 10)

