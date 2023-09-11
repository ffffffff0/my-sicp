#lang sicp

;; version 1
; (define (append list1 list2)
;   (if (null? list2)
;       list1
;       (append (list list1 (car list2))
;               (cdr list2))))

; (define (append list1 list2)
;   (if (null? list1)
;       list2
;       (cons (car list1) (append (cdr list1) list2))))

(append (list 1 2 3) (list 4 5 6))

; (define (subsets s)
;   (if (null? s)
;       (list nil)
;       (let ((rest (subsets (cdr s))))
;         (append rest (map (lambda (x) (cons (car s) x)) rest)))))

(define (subsets s)
  (if (null? s)
      (list '())
      (append (subsets (cdr s))
              (map (lambda (x)
                     (cons (car s) x))
                   (subsets (cdr s))))))

(subsets (list 1 2 3))

#|
  (subsets (1 2 3))
  (append (subsets (2 3)) (map func (subsets (2 3)))) next step:
(append (() (2) (3) (2 3)) ((1) (1 2) (1 3) (1 2 3)))
(() (2) (3) (1) (1 2) (1 3) (2 3) (1 2 3))

(subsets (2 3))
(append (subsets (3)) (map func (subsets (3)))) next step:
= (append (() (3)) ((2) (2 3)))
= (() (2) (3) (2 3))

(subsets (3))
(append () (map func ())) = (append () (3)) = (() (3))
|#