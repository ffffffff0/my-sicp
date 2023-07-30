#lang sicp

; iterative
; (define (cont-frac n d k)
;   (define (loop result idx)
;     (if (= idx 0)
;         result
;         (loop (/ (n idx)
;                  (+ (d idx) result))
;               (- idx 1))))
;   (loop 0 k))

; recusive
(define (cont-frac n d k)
  (if (= k 0)
      0
      (/ (n k)
         (+ (d k)
            (cont-frac n d (- k 1))))))

; test
(cont-frac (lambda (i) 1.0)
           (lambda (i) 1.0)
           10)