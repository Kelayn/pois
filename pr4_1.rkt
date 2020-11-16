#lang racket
(require math)

(define (proc_switch type lst)
  (case type
    [("summ") (foldl + 0 lst)]
    [("multi" "mpc") (foldl * 1 lst)]
    [("factorial" "fac") (map factorial lst)]
    [else 'non]))
