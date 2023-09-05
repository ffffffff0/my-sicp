#lang sicp

(define (square number)
  (* number number))

;; version 1
; (define (square-list items)
;   (define (iter things answer)
;     (if (null? things)
;         answer
;         (iter (cdr things)
;               (cons (square (car things))
;                     answer))))
;   (iter items nil))

(define (reverse aList)
  (define (reverse-iter aList ret)
    (if (null? aList)
        ret
        (reverse-iter (cdr aList) (cons (car aList) ret))))
  (reverse-iter aList '()))

;; version 2
(define (square-list items)
  (define (iter things answer)
    (if (null? things)
        (reverse answer)
        (iter (cdr things)
              (cons (square (car things))
                    answer))))
  (iter items nil))

;; Value 12: ((((() . 1) . 4) . 9) . 16)
;; (cons (cons (cons (cons '() 1) 4) 9) 16)

;; (list a1 a2 a3 ... an)
;; (cons a1 (cons a2 (cons ... (cons an nil))))
(square-list (list 1 2 3 4 5))
