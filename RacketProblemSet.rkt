#lang racket
;6. Create List
(define (create-list size)
  (cond
    [(= size 0) empty]
    [else (cons size (create-list (- size 1)))]))

;7. Length
(define (length list)
  (cond
    [(empty? list) 0]
    [else (+ 1 (length (rest list)))]))

(length (create-list 112321))

