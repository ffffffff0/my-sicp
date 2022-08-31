(define (func-pascal a b)
  (if (or (= a b) (= b 0))
      1
      (+ (func-pascal (- a 1) (- b 1))
         (func-pascal a (- b 1))
      )
  )
)

(func-pascal 4 2)
