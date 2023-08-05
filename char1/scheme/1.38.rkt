#lang sicp

; iterative
(define (cont-frac n d k)
  (define (loop result idx)
    (if (= idx 0)
        result
        (loop (/ (n idx)
                 (+ (d idx) result))
              (- idx 1))))
  (loop 0 k))

; recusive
; (define (cont-frac n d k)
;   (if (= k 0)
;       0
;       (/ (n k)
;          (+ (d k)
;             (cont-frac n d (- k 1))))))

; test, slove exp
(+ 2.0
   (cont-frac (lambda (i) 1.0)
              (lambda (i) (if (= 2 (remainder i 3))
                              (/ (+ i 1) 1.5)
                              1))
              100))