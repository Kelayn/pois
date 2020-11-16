#lang racket
(define (multiply_tails lst)
    (if (= (length lst) 1)
      lst
      (cons (foldl * 1 lst) (multiply_tails (cdr lst)))))
