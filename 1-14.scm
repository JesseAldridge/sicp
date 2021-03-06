; Exercise 1.14. Draw the tree illustrating the process generated by the count-change procedure of
; section 1.2.2 in making change for 11 cents. What are the orders of growth of the space and number
; of steps used by this process as the amount to be changed increases?

; How many different ways can we make change of $ 1.00, given half-dollars, quarters, dimes,
; nickels, and pennies?

(define (count-change amount)
  (cc amount 1))

(define (cc amount kinds-of-coins)
  (display "calling\n")
  (cond ((= amount 0) 1)
        ((or (< amount 0) (= kinds-of-coins 0)) 0)
        (else (+ (cc amount
                     (- kinds-of-coins 1))
                  (cc (- amount
                         (first-denomination kinds-of-coins))
                      kinds-of-coins)))))

(define (first-denomination kinds-of-coins)
  (cond ((= kinds-of-coins 1) 1)
        ((= kinds-of-coins 2) 5)
        ((= kinds-of-coins 3) 10)
        ((= kinds-of-coins 4) 25)
        ((= kinds-of-coins 5) 50)))

(count-change 100) ; 292

; (count-change 11) ; 4



; cc 11 5 (4)  N steps where N = 11
;   cc 11 4 (4)
;     cc 11 3 (4)
;       cc 11 2 (3)
;         cc 11 1 (1)
;           cc 11 0 (0)
;           cc 10 1 (1)
;             cc 9 1 (1)
;               cc 8 1 (1)
;                 cc 7 1 (1)
;                   cc 6 1 (1)
;                     cc 5 1 (1)
;                       cc 4 1 (1)
;                         cc 3 1 (1)
;                           cc 2 1 (1)
;                             cc 1 1 (1)
;                               cc 1 0
;                                 0
;                               cc 0 1
;                                 1
;         cc 6 2 (2)  N
;           cc 6 1 (1)  N steps where N = 6
;           cc 1 2 (1)
;             cc 1 1 (1)  N steps where N = 1
;             cc -4 2 (0)
;       cc 1 3 (1)
;         ...
;     cc -14 3 (0)
;   cc -49 5 (0)

; N ^ 5 for time
; N for space
