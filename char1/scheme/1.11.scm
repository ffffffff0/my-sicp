(define (func-rec n)
  (if (< n 3)
      n
      (+ (func-rec (- n 1))
         (* 2 (func-rec (- n 2)))
         (* 3 (func-rec (- n 3)))
      )
  )
)


(func-rec 6)

(define (func-iter n)
  (func-calc 2 1 0 0 n)
)

(define (func-calc a b c i n)
  (if (= i n)
      c
      (func-calc (+ a (* 2 b) (* 3 c))
                 a
                 b
                 (+ i 1)
                 n)
  )
)

(func-iter 6)
