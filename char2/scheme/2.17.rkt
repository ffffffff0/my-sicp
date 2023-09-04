#lang sicp

(define (last-pair aList)
  (if (null? (cdr aList))
      (car aList)
      (last-pair (cdr aList))))

(last-pair (list 23 72 149 34))