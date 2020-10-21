#lang racket
(define (getRadius) 
  (display "радиус основания (см) = ")
  (read))

(define (getHeight)
  (display "высота цилиндра (см) = ")
  (read))

(define (calcV)
  (displayln "Вычисление стоимости покупки.")
  (displayln "Введите исходные данные:")
  (printf "Объем цилиндра: ~a см. куб." (* (getHeight) (getRadius))))

; (calcV)