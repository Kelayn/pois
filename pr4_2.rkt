#lang racket
(define (transform_list lst)
  (if (= (length lst) 1)
      lst
      (append (reverse lst) (transform_list (cdr lst)))))

