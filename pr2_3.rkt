#lang racket

(define (calcSq)
  (writeln "Введите радиусы кольца и отверстия соответственно")
  (define ringRad (read))
  (define holeRad (read))
  (if (>= holeRad ringRad)
      (writeln "Радиус кольца должен быть меньше отверстия!")
      (printf "Площадь кольца: ~a" (- (* pi (* ringRad ringRad)) (* pi (* holeRad holeRad))))))

; (calcSq)