#lang sicp

(define (reverse aList)
  (define (reverse-item aList ret)
    (if (null? aList)
        ret
        (reverse-item (cdr aList) (cons (car aList) ret))))
  (reverse-item aList '()))

(reverse (list 1 4 9 16 25))