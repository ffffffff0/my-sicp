#lang sicp

(define (scale-list items factor)
  (if (null? items)
      nil
      (cons (* factor (car items))
            (scale-list (cdr items) factor))))

(scale-list (list 1 2 3 4 5) 100)

(define (map proc items)
  (if (null? items)
      nil
      (cons (proc (car items))
            (map proc (cdr items)))))

(map abs (list -1 -10 2.5 -11.6 17))

(map (lambda (x) (* x x))
     (list 1 2 3 4))

