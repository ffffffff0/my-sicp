#lang sicp
(define (double n)
    (+ n n)
)

(define (halve n)
    (/ n 2)
)

(define (isEven n)
    (= (remainder n 2) 0)
)
; iteration
; (define (mul-iter a b ret)
;     (if (= b 0)
;         ret
;         (mul-iter a (- b 1) (+ ret a)))
; )

; more good
(define (mul-iter a b ret)
    (cond ((= b 0) ret)
          ((isEven b) (mul-iter (double a) (halve b) ret))
          (else (mul-iter a (- b 1) (+ ret a))))
)

(mul-iter 2 2 0)
(mul-iter 2 4 0)
(mul-iter 2 5 0)
(mul-iter 2 6 0)