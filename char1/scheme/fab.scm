; recursion
(define (fib n)
  (cond ((= n 0) 0)
        ((= n 1) 1)
        (else (+ (fib (- n 1)) 
                 (fib (- n 2))))
  )
)

; iterative
(define (fib2 n)
  (define (fib-iter a b count)
    (if (= count n)
        a
        (fib-iter b (+ a b) (+ count 1)))
  )
  (fib-iter 0 1 0)
)

; test

 fib(5)

fib2(5)
