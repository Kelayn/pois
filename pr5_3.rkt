#lang racket

(require parser-tools/lex)
(require (prefix-in : parser-tools/lex-sre))

(define custom_lexer
  (lexer
   [(:: "define")
    (cons `(DEFINE ,(string->symbol lexeme))
          (custom_lexer input-port))]
   [(:+ (:or (char-range #\a #\z) (char-range #\A #\Z)))
    (cons `(ID ,(string->symbol lexeme))
          (custom_lexer input-port))]
   [(:: "#")
    (cons `(SHARP ,(string->symbol lexeme))
          (custom_lexer input-port))]
   [(:: (:? #\-) (:+ numeric))
    (cons `(INT ,(string->number lexeme))
          (custom_lexer input-port))]
   [whitespace
    (custom_lexer input-port)]
   [(eof)
    '()]))

(define (run_lexer value)
    (let ([input (open-input-string value)]) (custom_lexer input))
)
