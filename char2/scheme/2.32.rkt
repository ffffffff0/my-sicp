#lang sicp

;; version 1
; (define (append list1 list2)
;   (if (null? list2)
;       list1
;       (append (list list1 (car list2))
;               (cdr list2))))

(define (append list1 list2)
  (if (null? list1)
      list2
      (cons (car list1) (append (cdr list1) list2))))

(append (list 1 2 3) (list 4 5 6))

(define (subsets s)
  (if (null? s)
      (list nil)
      (let ((rest (subsets (cdr s))))
        (append rest (map (lambda (x) (cons (car s) x)) rest)))))

(subsets (list 1 2 3))