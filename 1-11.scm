
; Exercise 1.11. A function f is defined by the rule that
;   f(n) = n if n<3 and  f(n) = f(n - 1) + 2f(n - 2) + 3f(n - 3) if n> 3.
; Write a procedure that computes f by means of a recursive process. Write a procedure
; that computes f by means of an iterative process.

(define (f n)
  (if (< n 3)
    n
    (+ (f (- n 1)) (* 2 (f (- n 2))) (* 3 (f (- n 3))))
  )
)

(f 1) ; 1
(f 2) ; 2
(f 3) ; 2 + 2 + 0 = 4
(f 4) ; 11
(f 5) ; 25

; *3*2*1
; 1 2 4 11 25
; a b c
;   a b c
;

(define (f n)
  (if (< n 3)
    n
    (f-iter 1 2 4 (- n 3))
  )
)

(define (f-iter a b c n)
  (if (= n 0)
    c
    (f-iter b c (+ (* a 3) (* b 2) c) (- n 1))
  )
)

(f 1)
(f 2)
(f 3)
(f 4)
(f 5)

(f 0)
(f -10)
