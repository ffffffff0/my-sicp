(define (factorial n)
  (if (= n 1)
    1
    (* n (factorial (- n 1)))
  )
)

(define (iter-factorial n)
  (define (fact-iter result count)
    (if (> count n)
      result
      (fact-iter (* result * count) (+ count 1))
    )
  )

  (fact-iter 1 1)
)
