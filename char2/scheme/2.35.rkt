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

(define (count-leaves t)
  (accumulate ))

; (count-leaves (list (list 1 2) (list 3 (list 5 6)) 5))