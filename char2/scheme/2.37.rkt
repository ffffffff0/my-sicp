#lang sicp

(define (accumulate op init seqs)
  (if (null? seqs)
      init
      (op (car seqs)
          (accumulate op init (cdr seqs)))))


(define (car-n seqs)
  (map car seqs))

(define (cdr-n seqs)
  (map cdr seqs))


(define (accumulate-n op init seqs)
  (if (null? (car seqs))
      init
      (op (accumulate op init (car-n seqs))
          (accumulate-n op init (cdr-n seqs)))))

(define (dot-product v w)
  (accumulate + 0 (map * v w)))

(define (matrix-*-vector m v)
  (map (lambda (col)
         (dot-product col v))
       m))

(define (transpose mat)
  (accumulate-n cons '() mat))

(define (matrix-*-matrix m n)
  (let ((cols (transpose n)))
    (map (lambda (row-m)
           (map (lambda (col-n)
                  (dot-product row-m col-n)) cols)) m)))

(define m1 (list (list 1 2 3) (list 4 5 6) (list 7 8 9) (list 10 11 12)))
(define m2 (list (list 1 1 1) (list 2 2 2) (list 3 3 3) (list 4 4 4)))
(display (transpose m1))
(newline)
(display (matrix-*-matrix m1 m2))
