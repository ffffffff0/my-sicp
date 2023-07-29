#lang sicp

(define (close-enough? a b)
  (< (abs (- a b)) 0.0001))

; binary search
(define (search f neg-point pos-point)
  (let ((mid-point (average neg-point pos-point)))
    (if (close-enough? neg-point pos-point)
        mid-point
        (let ((test-value (f mid-point)))
          (cond [(positive? test-value) (search f neg-point mid-point)]
                [(negative? test-value) (search f mid-point pos-point)]
                [else mid-point])))))

