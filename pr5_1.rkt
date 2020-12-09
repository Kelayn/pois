#lang racket

(define (bubble_sort lst)
  (if (> (length lst) 1)
  (if (> (car lst) (cadr lst))
      (cons (car lst) (bubble_sort (cons (cadr lst) (cddr lst))))
      (cons (cadr lst) (bubble_sort (cons (car lst) (cddr lst))))
      )
  lst
  ))

(define (bubble_alg lst)
  (if (> (length lst) 1)
      (bubble_sort (cons (car lst) (bubble_alg (cdr lst))))
      lst
      ))

