#lang sicp

(define (squre n)
    (* n n))

(define (isEven n)
    (= (remainder n 2) 0))

(define (smallest-divisor n)
    (find-divisor n 2))

(define (divide a b)
    (= (remainder b a) 0))

(define (find-divisor n test-divisor)
    (cond ((> (squre test-divisor) n) n)
          ((divide test-divisor n) test-divisor)
          (else (find-divisor n (+ test-divisor 1)))))

; prime test
(define (isPrime n)
    (= (smallest-divisor n) n))


(isPrime 4)
(isPrime 5)
(isPrime 6)
(isPrime 9)
(isPrime 3)

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

(define (fast-prim n times)
    (cond ((= times 0) true)
          ((fermat-test n) (fast-prim n (- times 1)))
          (else false)
    )
)


(fast-prim 4 10)
(fast-prim 5 10)
(fast-prim 6 10)
(fast-prim 9 10)
(fast-prim 3 10)

