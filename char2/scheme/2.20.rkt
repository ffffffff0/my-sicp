#lang sicp

(define (append list1 list2)
  (if (null? list1)
      list2
      (cons (car list1) (append (cdr list1) list2))))

(define (same-parity first . aList)
  (define (iter aList ret remainder-val)
    (if (null? aList)
        ret
        (iter (cdr aList) (if (= (remainder (car aList) 2) remainder-val)
                              (append ret (list (car aList)))
                              ret) remainder-val)))
  (iter aList (list first) (remainder first 2)))

(same-parity 1 2 3 4 5 6 7)
(same-parity 2 3 4 5 6 7)
