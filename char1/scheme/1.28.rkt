#lang sicp

(define (squre n)
    (* n n))

(define (isEven n)
    (= (remainder n 2) 0))

(define (nontrivial-square-root a n)
  (and (not (= a 1))
       (not (= a (- n 1)))
       (= 1 (remainder (squre a) n)))
)
(define (exptmod base exp m)
    (cond ((= exp 0) 1)
          ((nontrivial-square-root base m)
           0)
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

(define (non-zero-random n)
  (let ((r (random n)))
    (if (not (= r 0))
        r
        (non-zero-random n)))
)

; Miller-Rabin test 
(define (test-iter n times)
    (cond ((= times 0)
            #t)
          ((= (exptmod (non-zero-random n) (- n 1) n)
              1)
            (test-iter n (- times 1)))
          (else
            #f)))
        
(define (Miller-Rabin-test n)
    (let ((times (ceiling (/ n 2))))
        (test-iter n times)))
