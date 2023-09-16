#lang sicp

(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))

; (define (count-leaves t)
;   (cond [(null? t) 0]
;         [(not (pair? t)) 1]
;         [else (+ (count-leaves (car t))
;                  (count-leaves (cdr t)))]))
;; 递归
(define (fringe aList)
  (if (null? aList)
      '()
      (let ((first (car aList)))
        (if (pair? first)
            (append (fringe first) (fringe (cdr aList)))
            (cons first (fringe (cdr aList)))))))

; 迭代
; (define (fringe aList)
;   (define (fringe-iter aList ret)
;     (cond [(null? aList) ret]
;           [(pair? aList)
;            (fringe-iter (car aList) (fringe-iter (cdr aList) ret))]
;           [else (cons aList ret)]))
;   (fringe-iter aList '()))

(define (count-leaves t)
  (accumulate +
              0
              (map (lambda (tree)
                     (if (pair? tree)
                         (count-leaves tree)
                         1))
                   t)))

; (count-leaves (list (list 1 2) (list 3 (list 5 6)) 5))