#lang racket
(define (getR1)
  (display "Величина первого сопротивления (Ом) = ")
  (read))

(define (getR2)
  (display "Величина первого сопротивления (Ом) = ")
  (read))

(define (calcRes)
  (displayln "Вычисление сопротивления электрической цепи.")
  (displayln "Введите исходные данные:")
  (define r1 (getR1))
  (define r2 (getR2))
  (printf "Сопротивление цепи: ~a Ом" (/ (* r1 r2) (* (+ r1 r2) 1.0))))

; (calcRes)