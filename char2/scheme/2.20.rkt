#lang sicp

(define (same-parity . aList)
  (define (iter aList func ret)
    (if (null? aList)
        ret
        (if (func (car aList))
            (iter (cdr aList) func (cons ret (car aList))))))
  (if (odd? (car aList))
      (iter aList odd? '())
      (iter aList even? '())))

(same-parity 1 2 3 4 5 6 7)
(same-parity 2 3 4 5 6 7)
