#lang sicp

(define (make-mobile left right)
  (list left right))

(define (make-branch lengths structure)
  (list lengths structure))

(define (left-branch tree)
  (car tree))

(define (right-branch tree)
;; cdr always return table()
  (cadr tree))

(define (branch-length tree)
  (car tree))

(define (branch-structure tree)
  (cadr tree))

(define mobile (make-mobile (make-branch 10 10) (make-branch 5 20)))

mobile
(left-branch mobile)
(right-branch mobile)
(branch-length (right-branch mobile))
(branch-structure (left-branch mobile))

(define (branch-weight tree)
  (if (pair? (branch-structure tree))
      (total-weight (branch-structure tree))
      (branch-structure tree)))

(define (total-weight tree)
  (+ (branch-weight (left-branch tree))
     (branch-weight (right-branch tree))))

(total-weight mobile)

(define (branch-check tree)
  (if (pair? (branch-structure tree))
      (branch-check (branch-structure tree))
      (* (branch-structure tree)
         (branch-length tree))))

(define (balance-check tree)
  (= (branch-check (left-branch tree))
     (branch-check (right-branch tree))))

(balance-check mobile)

;; (list a b)
;; (cons a (cons b))