;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname RacketStarter) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;1. To Celsius
(define (to-celcius temp) (* (- temp 32.0) (/ 5.0 9.0)))
(check-expect (to-celcius 32) 0)
(check-expect (to-celcius 86) 30)
(check-expect (to-celcius 5) -15)

;2. Is Leap Year
(define (is-leap-year year)
  (cond
    [(not (= (modulo year 4) 0)) false]
    [(not (= (modulo year 100) 0)) true]
    [(not (= (modulo year 400) 0)) false]
    [else true]))
(check-expect (is-leap-year 2016) true)
(check-expect (is-leap-year 2000) true)
(check-expect (is-leap-year 2015) false)
(check-expect (is-leap-year 1900) false)
(check-expect (is-leap-year 1700) false)

;3. Countdown
(define (countdown n)
  (cond
    [(>= 0 n) "Blastoff!"]
    [else (string-append (number->string n) " " (countdown (- n 1)))]))
(check-expect (countdown 10) "10 9 8 7 6 5 4 3 2 1 Blastoff!")
(check-expect (countdown 2) "2 1 Blastoff!")
(check-expect (countdown 0) "Blastoff!")
(check-expect (countdown -3) "Blastoff!")

;4. Summation
(define (summation n) (* (/ n 2.0) (+ 1.0 n)))
(check-expect (summation 6) 21)
(check-expect (summation 5) 15)
(check-expect (summation 4) 10)

;5. Num Digits
(define (num-digits n)
  (cond
    [(= n 0) 0]
    [else (+ 1 (num-digits (quotient n 10)))]))
(check-expect (num-digits 10) 2)
(check-expect (num-digits 154) 3)
(check-expect (num-digits 43564) 5)
(check-expect (num-digits 876943) 6)