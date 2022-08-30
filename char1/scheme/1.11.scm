(define (func-rec n)
  (if (< n 3)
      n
      (+ (func-rec (- n 1))
         (* 2 (func-rec (- n 2)))
         (* 3 (func-rec (- n 3)))
      )
  )
)

(define (func-iter ret n)

)
