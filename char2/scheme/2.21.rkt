#lang sicp

; (define (map proc items)
;   (if (null? items)
;       nil
;       (cons (proc (car items))
;             (map proc (cdr itmes)))))

; (define (square-list aList)
;   (map (lambda (x) (* x x))
;        aList))

(define (square-list items)
  (if (null? items)
      nil
      (cons (* (car items) (car items))
            (square-list (cdr items)))))

(square-list (list 1 2 3 4))