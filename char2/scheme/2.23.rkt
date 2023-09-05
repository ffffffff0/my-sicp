#lang sicp

(define (for-each proc aList)
  (if (null? aList)
      #t
      (and (proc (car aList)) (for-each proc (cdr aList))))))

(for-each (lambda (x)
            (newline)
            (display x))
          (list 1 2 3 4 5 6))