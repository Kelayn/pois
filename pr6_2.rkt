#lang racket

(define (eval)
 (displayln "Введите два целых числа:")
 (define a (read))
 (define b (read))
 (if (> a b)
   (printf "~a больше ~a" a b)
   (if (< a b)
   (printf "~a больше ~a" b a)
   (displayln "Числа равны"))))

; (eval)

(lambda () displayln "Введите два целых числа:")
 (define a (read))
 (define b (read))
 (if (> a b)
   (printf "~a больше ~a" a b)
   (if (< a b)
   (printf "~a больше ~a" b a)
   (displayln "Числа равны")))