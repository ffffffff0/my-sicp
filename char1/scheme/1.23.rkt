#lang sicp

(define (squre n)
    (* n n))

(define (isEven n)
    (= (remainder n 2) 0))

(define (smallest-divisor n)
    (find-divisor n 2))

(define (divide a b)
    (= (remainder b a) 0))

; add next test-divisor
(define (find-divisor n test-divisor)
    (cond ((> (squre test-divisor) n) n)
          ((divide test-divisor n) test-divisor)
          (else (find-divisor n (next test-divisor)))))

(define (next test-divisor)
    (if (= test-divisor 2)
        3
        (+ test-divisor 2))
)

; prime test
(define (prime? n)
    (= (smallest-divisor n) n))


(define (timed-prime-test n)
    (newline)
    (display n)
    (start-prime-test n (runtime))
)

(define (start-prime-test n start-time)
    (if (prime? n)
        (report-prime (- (runtime) start-time)))
)

(define (report-prime elapsed-time)
    (display "***")
    (display elapsed-time)
)

; > 1000 prime
(define (find-prime n count)
    (cond ((= count 0) n)
          ((prime? n)
          (timed-prime-test n)
          (find-prime (+ n 1) (- count 1)))
          (else (find-prime (+ n 1) count)))
)

(find-prime 1000 3)
(find-prime 10000 3)
(find-prime 100000 3)
(find-prime 1000000 3)
