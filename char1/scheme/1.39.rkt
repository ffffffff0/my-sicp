#lang sicp

(define (cont-frac n d k)
  (define (loop result idx)
    (if (= idx 0)
        result
        (loop (/ (n idx)
                 (+ (d idx) result))
              (- idx 1))))
  (loop 0 k))


(define (tan-cf x k)
  (cont-frac (lambda (i) (if (= i 1)
                             x
                             (- (* x x))))
             (lambda (i) (- (* 2 i) 1))
             k))

; test
(tan-cf 1.0 100)