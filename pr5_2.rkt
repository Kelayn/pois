#lang racket

(define (quick_sort lst)
  (cond
    [(< (length lst) 2) lst]
    [else (let ([pivot (car lst)] [rest (cdr lst)])
        (append
           (quick_sort (filter (lambda (x) (< x pivot)) rest))
           (list pivot)
           (quick_sort (filter (lambda (x) (>= x pivot)) rest))
        )
   )]))
