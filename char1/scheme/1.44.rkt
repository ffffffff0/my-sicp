#lang sicp

(define dx 0.001)

; smooth func
(define (smooth func)
  (lambda (x) (/ (+ (func (- x dx))
                    (func x)
                    (func (+ x dx)))
                 3.0)))

; repeated
(define (repeated func n)
  (if (= n 1)
      func
      (lambda (x) (func ((repeated func
                                   (- n 1)) x)))))

; n smooth
(((repeated smooth 10) (lambda (x) (* x x))) 5)