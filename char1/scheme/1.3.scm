(define (square x)
  (* x x))

(define (sum-squares x y)
  (+ (square x) (square y)))

(define (bigger x y)
  (if (> x y)
      x
      y
  )
)

(define (smaller x y)
  (if (< x y)
      x
      y
  )
)

(define (find x y z)
  (sum-squares (bigger x y) (bigger (smaller x y) z)))

(find 1 2 3)
; stupid idea
; (define (find a b c)
  ; ( (cond ((and (> a b) (> b c)) (sum-squares a b))
          ; ((and (> a b) (< b c)) (sum-squares a c))
          ; ((and (> b a) (> a c)) (sum-squares a b))
          ; ((and (> b a) (< a c)) (sum-squares b c))
          ; ((and (> c a) (< a b)) (sum-squares c b))
          ; ((and (> c a) (> a b)) (sum-squares c a))
          ; ((and (> a c) (> c b)) (sum-squares a c))
          ; ((and (> a c) (< c b)) (sum-squares a b))
          ; ((and (> b c) (< c a)) (sum-squares b a))
          ; ((and (> b c) (> c a)) (sum-squares b c))
          ; ((and (> c b) (< b a)) (sum-squares c a))
          ; ((and (> c b) (> b a)) (sum-squares c b))
    ; )
  ; )
; )

