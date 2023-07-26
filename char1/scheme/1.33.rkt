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

