#lang racket

(define (quizWar)
  (displayln "В каком году началась вторая мировая война?")
  (display "Введите год: ")
  (define year (read))
  (if (= year 1939)
    (displayln 'Верно!)
    (displayln "Ай-ай-ай. Вторая мировая война началась в 1939 г.")))

; (quizWar)