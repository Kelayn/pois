#lang racket
(define (factorial1 n)
  (define (fac x k)
    (if (= k 0)
        x
        (fac (* x k) (sub1 k))))
  (fac 1 n))

(define (factorial2 n)
  (if (= n 0)
      1
      (* n (factorial2 (sub1 n)))))

(define (just-time f s)
  (let-values ([(res t r g) (time-apply f s)])
    t))

(map just-time
     (list factorial factorial1 factorial2 *)
     (list '(100000) '(100000) '(100000) (range 1 100000)))