(define (cube-root x)
  (cube-iter 1.0 x)
)

(define (square x)
  (* x x)
)

(define (improve guess x)
  (/ (+ (/ x (square guess))
        (* 2 guess)
     )
     3
  )
)

(define (good-enough? old-value new-value)
  (> 0.01 
     (/ (abs (- new-value old-value))
        old-value)
  )
)

(define (cube-iter guess x)
  (if (good-enough? guess (improve guess x))
    (improve guess x)
    (cube-iter (improve guess x) x)
  )
)

(cube-root (* 3 3 3))
