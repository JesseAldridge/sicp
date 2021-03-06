; Exercise 1.16. Design a procedure that evolves an iterative exponentiation process that uses
; successive squaring and uses a logarithmic number of steps, as does fast-expt. (Hint: Using the
; observation that (b^(n/2))^2 = (b^2)^(n/2), keep, along with the exponent n and the base b, an
; additional state variable `a`, and define the state transformation in such a way that the product
; `a * b^n` is unchanged from state to state. At the beginning of the process a is taken to be 1, and
; the answer is given by the value of `a` at the end of the process. In general, the technique of
; defining an invariant quantity that remains unchanged from state to state is a powerful way to think
;  about the design of iterative algorithms.)


; linear
(define (expt b n)
  (if (= n 0)
    1
    (* b (expt b (- n 1)))))

; linear iterative
(define (expt b n)
  (expt-iter b n 1))
(define (expt-iter b counter product)
  (if (= counter 0)
    product
    (expt-iter b
      (- counter 1)
      (* b product))))

; log

(define (even? n)
  (= (remainder n 2) 0))

(define (fast-expt b n)
  (cond
    ((= n 0) 1)
    ((even? n) (square (fast-expt b (/ n 2))))
    (else (* b (fast-expt b (- n 1))))))

; log iterative

; (b^(n/2))^2 = (b^2)^(n/2)

(define (fast-expt-2 b n)
  (fast-expt-iter b n 1)
)

(define (fast-expt-iter b n product)
  (cond
    ((= n 0) product)
    ((even? n) (fast-expt-iter (* b b) (/ n 2) product))
    (else (fast-expt-iter b (- n 1) (* product b)))))

(fast-expt-2 10 10) ; 10000000000
(fast-expt-2 5 3) ; 125
