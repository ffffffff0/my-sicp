#lang sicp

(define x (list (list 1 2) (list 3 4)))
x

;; 递归
; (define (fringe aList)
;   (if (null? aList)
;       '()
;       (let ((first (car aList)))
;         (if (not (pair? first))
;             (cons first (fringe (cdr aList)))
;             (append (fringe first) (fringe (cdr aList)))))))

;; 迭代
(define (fringe aList)
  (define (fringe-iter aList ret)
    (cond [(null? aList) ret]
          [(pair? aList)
           (fringe-iter (car aList)
                        (fringe-iter (cdr aList) ret))]
          [else (cons aList ret)]))
  (fringe-iter aList '()))


(fringe x)
(fringe (list x x))