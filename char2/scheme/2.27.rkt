#lang sicp

(define (reverse aList)
  (define (reverse-iter aList ret)
    (if (null? aList)
        ret
        (reverse-iter (cdr aList) (cons (car aList) ret))))
  (if (pair? aList)
      (reverse-iter aList '())
      aList))


(define (deep-reverse aList)
  (define (deep-iter aList ret)
    (if (null? aList)
        ret
        (deep-iter (cdr aList) (cons (reverse (car aList)) ret))))
  (deep-iter aList '()))

(define x (list (list 1 2) (list 3 4)))
x
(reverse x)
(deep-reverse x)

(define y (list 3 4 (list 2 3 4 5) (list 6 7 8 9) (list 3 5 8 9) 8 9 10))
y
(reverse y)
(deep-reverse y)
