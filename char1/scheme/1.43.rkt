#lang sicp

(define (repeated func n)
  (if (= n 1)
      func
      (lambda (x) (func ((repeated func
                                   (- n 1)) x)))))

; test
((repeated (lambda (x) (* x x)) 2) 5)