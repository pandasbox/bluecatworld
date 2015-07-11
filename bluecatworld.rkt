;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname bluecatworld) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
;; The balance in the bank account
(define balance 0)
 
;; withdraw number[>0] -> number
;; Withdraws the given amount from the balance and
;; produces the new balance
;; Notes:
;;  - Prints an error message when the amount is greater
;;    than balance and doesn't change the balance
(define withdraw
  (lambda (x)
    (begin
      (cond
        [(< x 0)
         (print "Error withdrawal amount must not be less than 0")]
        [(> x balance)
         (print "Error withdrawal amount must not be greater than account balance")]
        [else (set! balance (- balance x))])
      balance)))
 
;; deposit number[>0] -> number
;; deposits the given amount into the balance and
;; produces the new balance
(define deposit
  (lambda (x)
    (begin
      (cond
        [(< x 0)
         (print "Error deposit amount must not be less than 0")]
        [else (set! balance (+ balance x))])
      balance)))
 