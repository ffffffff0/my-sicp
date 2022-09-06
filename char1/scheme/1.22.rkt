#lang sicp

(define (isEven n)
    (= (remainder n 2) 0))

(define (squre n)
    (* n n))

; The Fermat test
(define (exptmod base exp m)
    (cond ((= exp 0) 1)
          ((isEven exp)
           (remainder
            (squre (exptmod base (/ exp 2) m))
            m))
          (else
           (remainder
            (* base (exptmod base (- exp 1) m))
            m))
    )
)

(define (fermat-test n)
    (define (try-it a)
        (= (exptmod a n n) a))
    (try-it (+ 1 (random (- n 1))))
)

(define (prime? n times)
    (cond ((= times 0) true)
          ((fermat-test n) (prime? n (- times 1)))
          (else false)
    )
)
(define (timed-prime-test n)
    (newline)
    (display n)
    (start-prime-test n (runtime))
)

(define (start-prime-test n start-time)
    (if (prime? n 100)
        (report-prime (- (runtime) start-time)))
)

(define (report-prime elapsed-time)
    (display "***")
    (display elapsed-time)
)

; > 1000 prime
(define (find-prime n count)
    (cond ((= count 0) n)
          ((prime? n 100)
          (timed-prime-test n)
          (find-prime (+ n 1) (- count 1)))
          (else (find-prime (+ n 1) count)))
)

(find-prime 1000 3)
(find-prime 10000 3)
(find-prime 100000 3)
(find-prime 1000000 3)
