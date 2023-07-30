#lang sicp

; recursive
(define (cont-frac n d k)
  (define (rec-item idx)
    (if (> idx k)
        0
        (/ n
           (+ d
              (rec-item (+ 1 idx))))))
  (rec-item 1))

; iterative
; (define (cont-frac n d k)
;   (define (iter-item idx result)
;     (if (> idx k)
;         result
;         (iter-item (+ idx 1) ()))))

(cont-frac (lambda (i) 1.0)
           (lambda (i) 1.0)
           10)